library article;

import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/models/serializers.dart';
import 'package:http/http.dart' as http;

class ArticleService {
  http.Client _client;

  Service({http.Client client}) {
    if (client != null) {
      _client = client;
    }
  }

  Future<ApiResponse<MultipleArticleResponse>> globals({User user}) async {
    final response = await callEndpoint(
        buildUri("/articles"),
        (http.Client _client, Uri uri) async =>
            await _client.get(uri, headers: createAuthHeader(user: user)),
        client: _client);
    return await buildResponse(response, MultipleArticleResponse.serializer);
  }

  Future<ApiResponse<MultipleArticleResponse>> followings(User user) async {
    final response = await callEndpoint(
        buildUri("/articles/feed"),
        (http.Client _client, Uri uri) async =>
            await _client.get(uri, headers: createAuthHeader(user: user)),
        client: _client);
    return await buildResponse(response, MultipleArticleResponse.serializer);
  }

  Future<ApiResponse<SingleArticleResponse>> create(
      NewArticle article, User user) async {
    final response = await callEndpoint(
        buildUri("/articles"),
        (http.Client _client, Uri uri) async => await _client.post(uri,
            body: serializers.serializeWith(
                NewArticleRequest.serializer,
                (NewArticleRequestBuilder()
                      ..article = (NewArticleBuilder()..replace(article)))
                    .build()),
            headers: createAuthHeader(user: user)),
        client: _client);
    return await buildResponse(response, SingleArticleResponse.serializer);
  }

  Future<ApiResponse<SingleArticleResponse>> one(String slug,
      {User user}) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug"),
        (http.Client _client, Uri uri) async =>
            _client.get(uri, headers: createAuthHeader(user: user)),
        client: _client);
    return await buildResponse(response, SingleArticleResponse.serializer);
  }

  Future<ApiResponse<SingleArticleResponse>> update(
      String slug, UpdateArticle article, User user) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug"),
        (http.Client _client, Uri uri) async => _client.put(uri,
            headers: createAuthHeader(user: user),
            body: serializers.serializeWith(
                UpdateArticleRequest.serializer,
                (UpdateArticleRequestBuilder()
                      ..article = (UpdateArticleBuilder()..replace(article)))
                    .build())),
        client: _client);
    return await buildResponse(response, SingleArticleResponse.serializer);
  }

  Future<ApiResponse<String>> delete(String slug, User user) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug"),
        (http.Client _client, Uri uri) async =>
            _client.delete(uri, headers: createAuthHeader(user: user)),
        client: _client);

    return await buildResponse(response, DefaultSerializer.string);
  }
}
