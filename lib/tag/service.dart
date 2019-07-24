library tagService;

import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:http/http.dart' as http;

class TagService {
  http.Client _client;

  TagService({http.Client client}) {
    this._client = client;
  }

  Future<ApiResponse<List<String>>> tags() async {
    final response = await callEndpoint(buildUri("/tags"),
        (http.Client _client, Uri uri) async => _client.get(uri),
        client: _client);
    return await buildResponse(response, TagsResponse.serializer,
        conversionFunction: (TagsResponse tresponse) =>
            tresponse.tags.toList());

  }
}
