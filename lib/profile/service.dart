library profileService;

import 'package:http/http.dart' as http;
import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';

class ProfileService {
  http.Client _client;

  ProfileService({http.Client client}) {
    this._client = client;
  }

  Future<ApiResponse<Profile>> profile(String username, {String token}) async {
    final response = await callEndpoint(
        buildUri("/profiles/$username"),
        (http.Client _client, Uri uri) async =>
            _client.get(uri, headers: createAuthHeader(token: token)),
        client: _client);
    return await buildResponse(response, ProfileResponse.serializer,
        conversionFunction: (ProfileResponse profileResponse) =>
            profileResponse.profile);
  }

  Future<ApiResponse<Profile>> follow(String username, String token) async {
    final response = await callEndpoint(
        buildUri("/profiles/$username/follow"),
        (http.Client _client, Uri uri) async =>
            _client.post(uri, headers: createAuthHeader(token: token)),
        client: _client);
    return await buildResponse(response, ProfileResponse.serializer,
        conversionFunction: (ProfileResponse profileResponse) =>
            profileResponse.profile);
  }

  Future<ApiResponse<Profile>> unFollow(String username, String token) async {
    final response = await callEndpoint(
        buildUri("/profiles/$username/follow"),
        (http.Client _client, Uri uri) async =>
            _client.delete(uri, headers: createAuthHeader(token: token)),
        client: _client);
    return await buildResponse(response, ProfileResponse.serializer,
        conversionFunction: (ProfileResponse pResponse) => pResponse.profile);
  }
}
