library commentService;

import 'package:http/http.dart' as http;
import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/models/serializers.dart';

class CommentService {
  http.Client _client;

  CommentService({http.Client client}) {
    this._client = client;
  }

  Future<ApiResponse<MultipleCommentResponse>> comments(String slug,
      {String token}) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug/comment"),
        (http.Client _client, Uri uri) async =>
            _client.get(uri, headers: createAuthHeader(token: token)),
        client: _client);
    return await buildResponse(response, MultipleCommentResponse.serializer);
  }

  Future<ApiResponse<Comment>> create(
      String slug, NewComment newComment, String token) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug/comments"),
        (http.Client _client, Uri uri) async => _client.post(uri,
            headers: createAuthHeader(token: token),
            body: serializers.serializeWith(
                NewCommentRequest.serializer,
                (NewCommentRequestBuilder()
                      ..comment = (NewCommentBuilder()..replace(newComment)))
                    .build())),
        client: _client);
    return await buildResponse(response, SingleCommentResponse.serializer,
        conversionFunction: (SingleCommentResponse sResponse) =>
            sResponse.comment);
  }

  Future<ApiResponse<String>> delete(
      String slug, int commentId, String token) async {
    final response = await callEndpoint(
        buildUri("/articles/$slug/comments/$commentId"),
        (http.Client _client, Uri uri) async =>
            _client.delete(uri, headers: createAuthHeader(token: token)),client: _client);
    return await buildResponse(response, DefaultSerializer.string);
  }
}
