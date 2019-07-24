library user;

import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/models/serializers.dart';
import 'package:http/http.dart' as http;

class UserService {
  http.Client _client;

  UserService({http.Client client}) {
    if (client != null) {
      this._client = client;
    }
  }

  Future<ApiResponse<User>> login(LoginUser user) async {
    LoginUserRequestBuilder builder = LoginUserRequestBuilder()
      ..user = (LoginUserBuilder()..replace(user));
    final response = await callEndpoint(
        buildUri("/users/login "),
        (http.Client _client, Uri uri) async => await _client.post(uri,
            body: serializers.serializeWith(
                LoginUserRequest.serializer, builder.build())),
        client: _client);
    return await buildResponse(response, UserResponse.serializer,
        conversionFunction: (UserResponse userResponse) => userResponse.user);
  }

  Future<ApiResponse<User>> create(NewUser newUser) async {
    final response = await callEndpoint(
        buildUri("/users"),
        (http.Client _client, Uri uri) async => await _client.post(uri,
            body: serializers.serializeWith(
                NewUserRequest.serializer,
                (NewUserRequestBuilder()
                      ..user = (NewUserBuilder()..replace(newUser)))
                    .build())),
        client: _client);
    return await buildResponse(response, UserResponse.serializer,
        conversionFunction: (UserResponse userResponse) => userResponse.user);
  }

  Future<ApiResponse<User>> current(String token) async {
    final response = await callEndpoint(
        buildUri("/users"),
        (http.Client _client, Uri uri) async =>
            _client.get(uri, headers: createAuthHeader(token: token)),
        client: _client);
    return await buildResponse(response, UserResponse.serializer,
        conversionFunction: (UserResponse usserResponse) => usserResponse.user);
  }

  Future<ApiResponse<User>> update(UpdateUser updateUser, String token) async {
    final response = await callEndpoint(
        buildUri("/users"),
        (http.Client _client, Uri uri) async => _client.put(uri,
            headers: createAuthHeader(token: token),
            body: serializers.serializeWith(
                UpdateUserRequest.serializer,
                (UpdateUserRequestBuilder()
                      ..user = (UpdateUserBuilder()..replace(updateUser)))
                    .build())));
    return await buildResponse(response, UserResponse.serializer,
        conversionFunction: (UserResponse userResponse) => userResponse.user);
  }
}
