library favoriteService;

import 'package:http/http.dart' as http;
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/api.dart';

class FavoriteService {
  http.Client _client;

  FavoriteService({http.Client client}) {
    this._client = client;
  }

  Future<ApiResponse<Article>> create(String slug, String token) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug/favorite"),
        (http.Client _client, Uri uri) async =>
            _client.post(uri, headers: createAuthHeader(token: token)),
        client: _client);
    return await buildResponse(response, SingleArticleResponse.serializer,
        conversionFunction: (SingleArticleResponse sResponse) =>
            sResponse.article);
  }

  Future<ApiResponse<String>> delete(String slug, String token) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug/favorite"),
        (http.Client _client, Uri uri) async =>
            _client.delete(uri, headers: createAuthHeader(token: token)),
        client: _client);
    return await buildResponse(response, DefaultSerializer.string);
  }
}
