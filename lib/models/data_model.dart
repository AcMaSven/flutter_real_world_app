library data_model;

export 'data_model.dart';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'data_model.g.dart';

abstract class User implements Built<User, UserBuilder> {
  String get email;
  String get username;
  String get token;
  String get bio;
  String get image;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;
  static Serializer<User> get serializer => _$userSerializer;
}

abstract class Profile implements Built<Profile, ProfileBuilder> {
  String get username;
  @nullable
  String get bio;
  String get image;
  bool get following;

  Profile._();

  factory Profile([updates(ProfileBuilder b)]) = _$Profile;
  static Serializer<Profile> get serializer => _$profileSerializer;
}

abstract class Article implements Built<Article, ArticleBuilder> {
  String get slug;
  String get title;
  String get description;
  String get body;
  BuiltList<String> get tagList;
  String get createdAt;
  String get updatedAt;
  bool get favorited;
  int get favoritesCount;
  Profile get author;
  Article._();

  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
  static Serializer<Article> get serializer => _$articleSerializer;
}

abstract class Comment implements Built<Comment, CommentBuilder> {
  int get id;
  String get createdAt;
  String get updatedAt;
  String get body;
  Profile get author;

  Comment._();

  factory Comment([void Function(CommentBuilder) updates]) = _$Comment;
  static Serializer<Comment> get serializer => _$commentSerializer;
}

abstract class LoginUser implements Built<LoginUser, LoginUserBuilder> {
  String get email;
  String get password;

  LoginUser._();

  factory LoginUser([void Function(LoginUserBuilder) updates]) = _$LoginUser;
  static Serializer<LoginUser> get serializer => _$loginUserSerializer;
}

abstract class LoginUserRequest
    implements Built<LoginUserRequest, LoginUserRequestBuilder> {
  LoginUser get user;
  LoginUserRequest._();

  factory LoginUserRequest([void Function(LoginUserRequestBuilder) updates]) =
      _$LoginUserRequest;

  static Serializer<LoginUserRequest> get serializer =>
      _$loginUserRequestSerializer;


}

abstract class NewUser implements Built<NewUser, NewUserBuilder> {
  String get username;
  String get email;
  String get password;
  NewUser._();

  factory NewUser([void Function(NewUserBuilder) updates]) = _$NewUser;

  static Serializer<NewUser> get serializer => _$newUserSerializer;
}

abstract class NewUserRequest
    implements Built<NewUserRequest, NewUserRequestBuilder> {
  NewUser get user;
  NewUserRequest._();

  factory NewUserRequest([void Function(NewUserRequestBuilder) updates]) =
      _$NewUserRequest;

  static Serializer<NewUserRequest> get serializer =>
      _$newUserRequestSerializer;
}

abstract class UserResponse
    implements Built<UserResponse, UserResponseBuilder> {
  User get user;
  UserResponse._();

  factory UserResponse([void Function(UserResponseBuilder) updates]) =
      _$UserResponse;

  static Serializer<UserResponse> get serializer => _$userResponseSerializer;
}

abstract class UpdateUser implements Built<UpdateUser, UpdateUserBuilder> {
  @nullable
  String get email;
  @nullable
  String get token;
  @nullable
  String get username;
  @nullable
  String get bio;
  @nullable
  String get image;
  UpdateUser._();

  factory UpdateUser([void Function(UpdateUserBuilder) updates]) = _$UpdateUser;

  static Serializer<UpdateUser> get serializer => _$updateUserSerializer;
}

abstract class UpdateUserRequest
    implements Built<UpdateUserRequest, UpdateUserRequestBuilder> {
  UpdateUser get user;
  UpdateUserRequest._();

  factory UpdateUserRequest([void Function(UpdateUserRequestBuilder) updates]) =
      _$UpdateUserRequest;

  static Serializer<UpdateUserRequest> get serializer =>
      _$updateUserRequestSerializer;
}

abstract class ProfileResponse
    implements Built<ProfileResponse, ProfileResponseBuilder> {
  Profile get profile;
  ProfileResponse._();

  factory ProfileResponse([void Function(ProfileResponseBuilder) updates]) =
      _$ProfileResponse;

  static Serializer<ProfileResponse> get serializer =>
      _$profileResponseSerializer;
}

abstract class SingleArticleResponse
    implements Built<SingleArticleResponse, SingleArticleResponseBuilder> {
  Article get article;
  SingleArticleResponse._();

  factory SingleArticleResponse(
          [void Function(SingleArticleResponseBuilder) updates]) =
      _$SingleArticleResponse;

  static Serializer<SingleArticleResponse> get serializer =>
      _$singleArticleResponseSerializer;
}

abstract class MultipleArticleResponse
    implements Built<MultipleArticleResponse, MultipleArticleResponseBuilder> {
  BuiltList<Article> get articles;
  int get articlesCount;
  MultipleArticleResponse._();

  factory MultipleArticleResponse(
          [void Function(MultipleArticleResponseBuilder) updates]) =
      _$MultipleArticleResponse;

  static Serializer<MultipleArticleResponse> get serializer =>
      _$multipleArticleResponseSerializer;
}

abstract class NewArticle implements Built<NewArticle, NewArticleBuilder> {
  String get title;
  String get description;
  String get body;
  @nullable
  BuiltList<String> get tagList;
  NewArticle._();

  factory NewArticle([void Function(NewArticleBuilder) updates]) = _$NewArticle;

  static Serializer<NewArticle> get serializer => _$newArticleSerializer;
}

abstract class NewArticleRequest
    implements Built<NewArticleRequest, NewArticleRequestBuilder> {
  NewArticle get article;
  NewArticleRequest._();

  factory NewArticleRequest([void Function(NewArticleRequestBuilder) updates]) =
      _$NewArticleRequest;

  static Serializer<NewArticleRequest> get serializer =>
      _$newArticleRequestSerializer;
}

abstract class UpdateArticle
    implements Built<UpdateArticle, UpdateArticleBuilder> {
  @nullable
  String get title;
  @nullable
  String get description;
  @nullable
  String get body;
  UpdateArticle._();

  factory UpdateArticle([void Function(UpdateArticleBuilder) updates]) =
      _$UpdateArticle;

  static Serializer<UpdateArticle> get serializer => _$updateArticleSerializer;
}

abstract class UpdateArticleRequest
    implements Built<UpdateArticleRequest, UpdateArticleRequestBuilder> {
  UpdateArticle get article;
  UpdateArticleRequest._();

  factory UpdateArticleRequest(
          [void Function(UpdateArticleRequestBuilder) updates]) =
      _$UpdateArticleRequest;

  static Serializer<UpdateArticleRequest> get serializer =>
      _$updateArticleRequestSerializer;
}

abstract class SingleCommentResponse
    implements Built<SingleCommentResponse, SingleCommentResponseBuilder> {
  Comment get comment;
  SingleCommentResponse._();

  factory SingleCommentResponse(
          [void Function(SingleCommentResponseBuilder) updates]) =
      _$SingleCommentResponse;

  static Serializer<SingleCommentResponse> get serializer =>
      _$singleCommentResponseSerializer;
}

abstract class MultipleCommentResponse
    implements Built<MultipleCommentResponse, MultipleCommentResponseBuilder> {
  BuiltList<Comment> get comments;
  MultipleCommentResponse._();

  factory MultipleCommentResponse(
          [void Function(MultipleCommentResponseBuilder) updates]) =
      _$MultipleCommentResponse;

  static Serializer<MultipleCommentResponse> get serializer =>
      _$multipleCommentResponseSerializer;
}

abstract class NewComment implements Built<NewComment, NewCommentBuilder> {
  String get body;
  NewComment._();

  factory NewComment([void Function(NewCommentBuilder) updates]) = _$NewComment;

  static Serializer<NewComment> get serializer => _$newCommentSerializer;
}

abstract class NewCommentRequest
    implements Built<NewCommentRequest, NewCommentRequestBuilder> {
  NewComment get comment;
  NewCommentRequest._();

  factory NewCommentRequest([void Function(NewCommentRequestBuilder) updates]) =
      _$NewCommentRequest;

  static Serializer<NewCommentRequest> get serializer =>
      _$newCommentRequestSerializer;
}

abstract class TagsResponse
    implements Built<TagsResponse, TagsResponseBuilder> {
  BuiltList<String> get tags;
  TagsResponse._();

  factory TagsResponse([void Function(TagsResponseBuilder) updates]) =
      _$TagsResponse;

  static Serializer<TagsResponse> get serializer => _$tagsResponseSerializer;
}







abstract class GenericErrorModel
    implements Built<GenericErrorModel, GenericErrorModelBuilder> {

  BuiltListMultimap<String,String> get errors;


  GenericErrorModel._();

  factory GenericErrorModel([void Function(GenericErrorModelBuilder) updates]) =
  _$GenericErrorModel;

  static Serializer<GenericErrorModel> get serializer =>
      _$genericErrorModelSerializer;
}


