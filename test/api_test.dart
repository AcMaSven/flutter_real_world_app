import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  group("Endpoint call tests", () {
    test("Succesfull call", () async {
      final client = new MockClient();
      when(client.post(any, body: argThat(isNotNull, named: 'body')))
          .thenAnswer((_) async => http.Response(
              json.encode({
                "user": {
                  "email": "testemail@test.de",
                  "username": "test",
                  "token": "xxxxxx.yyyyyyy.zzzzzz",
                  "bio": "bio",
                  "image": "/url/to/image"
                }
              }),
              200));
      throwOnMissingStub(client);
      var loginResponse = await login(
          (LoginUserBuilder()
                ..password = "test"
                ..email = "testemail@test.de")
              .build(),
          client: client);
      loginResponse.join((user) async {
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
      }, (genericError) {
        expect(genericError, isNull);
      }, (errorMessage) {
        expect(errorMessage, isNull);
      });
    });
    test("Wrong email or password generic error", () async {
      final client = new MockClient();
      when(client.post(any, body: argThat(isNotNull, named: 'body')))
          .thenAnswer((_) async => http.Response(
              json.encode({
                "errors": {
                  "email or password": ["is invalid"]
                }
              }),
              422));
      final loginResponse = await login(
          (LoginUserBuilder()
                ..email = "test"
                ..password = "egal")
              .build(),
          client: client);
      loginResponse.join((user) {
        expect(user, isNull);
      }, (genericError) {
        expect(genericError, isA<GenericErrorModel>());
        GenericErrorModelBuilder genericErrorModel = GenericErrorModelBuilder()
          ..errors.add("email or password", "is invalid");
        expect(genericError, genericErrorModel.build());
      }, (message) {
        expect(message, isNull);
      });
    });
    test("Unexpected error from server", () async {
      final client = new MockClient();
      when(client.post(any, body: argThat(isNotNull, named: 'body')))
          .thenAnswer((_) async => http.Response('Unauthorized', 401));
      final loginResponse = await login((LoginUserBuilder()
            ..email = "test"
            ..password = "egal")
          .build(),client: client);
      loginResponse.join((normal){
        expect(normal, isNull);
      }, (genericError){
        expect(genericError, isNull);
      }, (message){
        expect(message, "Unauthorized");
      });
    });
  });
  group("Article tests", (){
    test("Global article list", () async {
      final client = MockClient();
      when(client.get(buildUri("/articles"))).thenAnswer((_) async => http.Response(json.encode({
        "articles":[
          {
            "slug": "slug",
            "title": "testtitle",
            "description": "Test",
            "body": "test",
            "tagList": ["first tag","second tag"],
            "createdAt": "2019-07-22",
            "updatedAt": "2019-07-22",
            "favorited": false,
            "favoritesCount": 0,
            "author": {
              "username": "test",
              "bio": "bio",
              "image": "image",
              "following": false
            }

          }
        ],
        "articlesCount": 2
      }),200));
      final articlesResponse = await getArticles(client: client);
      articlesResponse.join((articles){
        expect(articles.articles, isNotNull);
        expect(articles.articlesCount, 2);
      }, (genericError){
        expect(genericError, isNull);
      }, (error){
        expect(error, isNull);
      });
    });
  });
}
