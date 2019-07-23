library api;

import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:built_value/serializer.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/models/serializers.dart';
import 'package:sealed_unions/sealed_unions.dart';

export 'api.dart';

/// Main url for the demo app api
const _url = "https://conduit.productionready.io/api";

/// Function to get the appropriate response
typedef ResponseFunction = Future<http.Response> Function(
    http.Client client, Uri url);

/// Build uri in respect to [_url]
///
Uri buildUri(String path) {
  return Uri.parse(_url + path);
}
///Call the api endpoint
Future<http.Response> callEndpoint(Uri uri, ResponseFunction responseFunction,
    {http.Client client}) async {
  if (client == null) {
    return responseFunction(new http.Client(), uri);
  }
  return await responseFunction(client, uri);
}

///
/// Extracts the response accordingly of the response statuscode.
/// Also see [ApiResponse]
///
Future<ApiResponse<T>> extractResponse<T>(
    http.Response response, Serializer<T> serializer) async {
  developer.log("$response");
  final serialisation = <E>(Serializer<E> serializer) =>
      serializers.deserializeWith(serializer, json.decode(response.body));
  if (response.statusCode == 200) {
    return ApiResponse.normal(serialisation<T>(serializer));
  } else if (response.statusCode == 422) {
    return ApiResponse.genericError(
        serialisation<GenericErrorModel>(GenericErrorModel.serializer));
  }
  return ApiResponse.unexpectedError(response.body);
}

typedef ConversionFunction<T, E> = T Function(E conversionType);

Future<ApiResponse<T>> switchFirstType<T, E>(ApiResponse<E> apiResponse,
    ConversionFunction<T, E> conversionFunction) async {
  return apiResponse.join(
      (first) => ApiResponse.normal(conversionFunction(first)),
      (second) => ApiResponse.genericError(second),
      (error) => ApiResponse.unexpectedError(error));
}

///
/// return either [User] or [GenericErrorModel] or [Null] if there was an error different from 422
///
Future<ApiResponse<User>> login(LoginUser user, {http.Client client}) async {
  LoginUserRequestBuilder builder = LoginUserRequestBuilder()
    ..user = (LoginUserBuilder()..replace(user));
  final response = await callEndpoint(
      buildUri("/users/login "),
      (http.Client _client, Uri uri) async => await _client.post(uri,
          body: serializers.serializeWith(
              LoginUserRequest.serializer, builder.build())),
      client: client);
  return await buildResponse(
      response,
      (UserResponse userResponse) => userResponse.user,
      UserResponse.serializer);
}

Future<ApiResponse<T>> buildResponse<T, E>(
    http.Response response,
    ConversionFunction<T, E> conversionFunction,
    Serializer<E> responseSerializer) async {
  ApiResponse<E> extractedResponse =
      await extractResponse<E>(response, responseSerializer);
  return await switchFirstType<T, E>(extractedResponse, conversionFunction);
}

Future<ApiResponse<List<Article>>> getArticles() async {
  final response = await http.get(buildUri("/articles"));

  MultipleArticleResponse multipleArticleResponse = serializers.deserializeWith(
      MultipleArticleResponse.serializer, json.decode(response.body));
  return null;
}

///
/// return either [User] or [GenericErrorModel]
///
Future<Object> signup(NewUser user) async {
  NewUserRequestBuilder request = NewUserRequestBuilder()
    ..user = (NewUserBuilder()..replace(user));
  final response = await http.post(buildUri("/users"),
      body: serializers.serializeWith(
          NewUserRequest.serializer, json.encode(request.build())));
  if (response.statusCode == 200) {
    UserResponse userResponse = serializers.deserializeWith(
        UserResponse.serializer, json.decode(response.body));
    return userResponse.user;
  }
  throw ("Error");
}

Future<bool> checkPassword(String password) async {
  bool passwordFound = false;
  String passwords = null;
  final hashedPassword = sha1.convert(utf8.encode(password));

  print(hashedPassword.toString());
  final testinHash = hashedPassword.toString().substring(0, 5);

  final response = await http
      .get(Uri.parse("https://api.pwnedpasswords.com/range/$testinHash"));
  passwords = response.body;

  passwords.split("\n").forEach((hashComb) {
    final hash = hashComb.substring(0, hashComb.lastIndexOf(":")).toLowerCase();
    print(testinHash + hash);
    if (hashedPassword.toString() == testinHash + hash) {
      passwordFound = true;
    }
  });
  return passwordFound;
}

///
/// Holds all possible values for a response. A Response can contain following values
/// either a [T] which is the value that we expect from the server, either [GenericErrorModel] if some of the values are wrong from the last Request or
/// a [String] if there was a Servererror or authorization error.
///
class ApiResponse<T> extends Union3Impl<T, GenericErrorModel, String> {
  ApiResponse(Union3<T, GenericErrorModel, String> union) : super(union);

  factory ApiResponse.genericError(GenericErrorModel error) {
    return ApiResponse(Triplet<T, GenericErrorModel, String>().second(error));
  }

  factory ApiResponse.normal(T normal) {
    return ApiResponse(Triplet<T, GenericErrorModel, String>().first(normal));
  }

  factory ApiResponse.unexpectedError(String errorMessage) {
    return ApiResponse(
        Triplet<T, GenericErrorModel, String>().third(errorMessage));
  }
}
