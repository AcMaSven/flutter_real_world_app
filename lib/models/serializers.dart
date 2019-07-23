library serializers;

import 'package:built_value/serializer.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
part 'serializers.g.dart';

@SerializersFor([
  User,
  Profile,
  Article,
  Comment,
  LoginUser,
  LoginUserRequest,
  NewUser,
  NewUserRequest,
  UserResponse,
  UpdateUser,
  UpdateUserRequest,
  ProfileResponse,
  SingleArticleResponse,
  MultipleArticleResponse,
  NewArticle,
  NewArticleRequest,
  UpdateArticle,
  UpdateArticleRequest,
  SingleCommentResponse,
  MultipleCommentResponse,
  NewComment,
  NewCommentRequest,
  TagsResponse,
  GenericErrorModel

])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
