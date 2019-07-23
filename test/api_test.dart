import 'package:flutter_test/flutter_test.dart';

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/api.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  group("Login tests", () {
    test("Sucessfull login", () async {
      final client = new MockClient();
      when(client.post(any, body: argThat(isNotNull, named: 'body')))
          .thenAnswer((_) async => http.Response(json.encode({
          "user": {
            "email": "testemail@test.de",
            "username": "test",
            "token": "xxxxxx.yyyyyyy.zzzzzz",
            "bio": "bio",
            "image": "/url/to/image"
          }
      }), 200));
      throwOnMissingStub(client);
      var loginResponse = await login(
      (LoginUserBuilder()
        ..password = "test"
        ..email = "testemail@test.de")
          .build(),
      client: client);
      loginResponse.join((user)async {
        expect(user, isA<User>());
        expect(user, isInstanceOf<User>());
        expect(user, isNotNull);
        expect(
            user,
            (UserBuilder()
              ..email = "testemail@test.de"
              ..token = "xxxxxx.yyyyyyy.zzzzzz"
              ..username = "test"
              ..bio = "bio"
              ..image = "/url/to/image")
                .build());
      }, (genericError){
        expect(genericError, isNull);
      }, (errorMessage){
        expect(errorMessage, isNull);
      });

    });
    test("Wrong email or password", () async {
      final client = new MockClient();
      when(client.post(any,body: argThat(isNotNull,named: 'body'))).thenAnswer((_) async => http.Response(
          json.encode({
            "errors": {
              "email or password":[
                "is invalid"
              ]
            }
          })
          ,422));
      final loginResponse = await login((LoginUserBuilder()..email="test"..password="egal").build(),client: client);
      loginResponse.join((user) {
        expect(user, isNull);
      }, (genericError){
        expect(genericError, isA<GenericErrorModel>());
        GenericErrorModelBuilder genericErrorModel = GenericErrorModelBuilder()..errors.add("email or password", "is invalid");
        expect(genericError, genericErrorModel.build());
      }, (message){
        expect(message, isNull);
      });
    });
  });
}
