// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Article.serializer)
      ..add(Comment.serializer)
      ..add(GenericErrorModel.serializer)
      ..add(LoginUser.serializer)
      ..add(LoginUserRequest.serializer)
      ..add(MultipleArticleResponse.serializer)
      ..add(MultipleCommentResponse.serializer)
      ..add(NewArticle.serializer)
      ..add(NewArticleRequest.serializer)
      ..add(NewComment.serializer)
      ..add(NewCommentRequest.serializer)
      ..add(NewUser.serializer)
      ..add(NewUserRequest.serializer)
      ..add(Profile.serializer)
      ..add(ProfileResponse.serializer)
      ..add(SingleArticleResponse.serializer)
      ..add(SingleCommentResponse.serializer)
      ..add(TagsResponse.serializer)
      ..add(UpdateArticle.serializer)
      ..add(UpdateArticleRequest.serializer)
      ..add(UpdateUser.serializer)
      ..add(UpdateUserRequest.serializer)
      ..add(User.serializer)
      ..add(UserResponse.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Article)]),
          () => new ListBuilder<Article>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Comment)]),
          () => new ListBuilder<Comment>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltListMultimap,
              const [const FullType(String), const FullType(String)]),
          () => new ListMultimapBuilder<String, String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
