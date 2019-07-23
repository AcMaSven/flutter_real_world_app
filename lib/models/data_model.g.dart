// GENERATED CODE - DO NOT MODIFY BY HAND

part of data_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();
Serializer<Profile> _$profileSerializer = new _$ProfileSerializer();
Serializer<Article> _$articleSerializer = new _$ArticleSerializer();
Serializer<Comment> _$commentSerializer = new _$CommentSerializer();
Serializer<LoginUser> _$loginUserSerializer = new _$LoginUserSerializer();
Serializer<LoginUserRequest> _$loginUserRequestSerializer =
    new _$LoginUserRequestSerializer();
Serializer<NewUser> _$newUserSerializer = new _$NewUserSerializer();
Serializer<NewUserRequest> _$newUserRequestSerializer =
    new _$NewUserRequestSerializer();
Serializer<UserResponse> _$userResponseSerializer =
    new _$UserResponseSerializer();
Serializer<UpdateUser> _$updateUserSerializer = new _$UpdateUserSerializer();
Serializer<UpdateUserRequest> _$updateUserRequestSerializer =
    new _$UpdateUserRequestSerializer();
Serializer<ProfileResponse> _$profileResponseSerializer =
    new _$ProfileResponseSerializer();
Serializer<SingleArticleResponse> _$singleArticleResponseSerializer =
    new _$SingleArticleResponseSerializer();
Serializer<MultipleArticleResponse> _$multipleArticleResponseSerializer =
    new _$MultipleArticleResponseSerializer();
Serializer<NewArticle> _$newArticleSerializer = new _$NewArticleSerializer();
Serializer<NewArticleRequest> _$newArticleRequestSerializer =
    new _$NewArticleRequestSerializer();
Serializer<UpdateArticle> _$updateArticleSerializer =
    new _$UpdateArticleSerializer();
Serializer<UpdateArticleRequest> _$updateArticleRequestSerializer =
    new _$UpdateArticleRequestSerializer();
Serializer<SingleCommentResponse> _$singleCommentResponseSerializer =
    new _$SingleCommentResponseSerializer();
Serializer<MultipleCommentResponse> _$multipleCommentResponseSerializer =
    new _$MultipleCommentResponseSerializer();
Serializer<NewComment> _$newCommentSerializer = new _$NewCommentSerializer();
Serializer<NewCommentRequest> _$newCommentRequestSerializer =
    new _$NewCommentRequestSerializer();
Serializer<TagsResponse> _$tagsResponseSerializer =
    new _$TagsResponseSerializer();
Serializer<GenericErrorModel> _$genericErrorModelSerializer =
    new _$GenericErrorModelSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'bio',
      serializers.serialize(object.bio, specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileSerializer implements StructuredSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];
  @override
  final String wireName = 'Profile';

  @override
  Iterable<Object> serialize(Serializers serializers, Profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'following',
      serializers.serialize(object.following,
          specifiedType: const FullType(bool)),
    ];
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Profile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'following':
          result.following = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'tagList',
      serializers.serialize(object.tagList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'favorited',
      serializers.serialize(object.favorited,
          specifiedType: const FullType(bool)),
      'favoritesCount',
      serializers.serialize(object.favoritesCount,
          specifiedType: const FullType(int)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(Profile)),
    ];

    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagList':
          result.tagList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'favorited':
          result.favorited = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'favoritesCount':
          result.favoritesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile)) as Profile);
          break;
      }
    }

    return result.build();
  }
}

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable<Object> serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(Profile)),
    ];

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile)) as Profile);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginUserSerializer implements StructuredSerializer<LoginUser> {
  @override
  final Iterable<Type> types = const [LoginUser, _$LoginUser];
  @override
  final String wireName = 'LoginUser';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginUserRequestSerializer
    implements StructuredSerializer<LoginUserRequest> {
  @override
  final Iterable<Type> types = const [LoginUserRequest, _$LoginUserRequest];
  @override
  final String wireName = 'LoginUserRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginUserRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(LoginUser)),
    ];

    return result;
  }

  @override
  LoginUserRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginUserRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(LoginUser)) as LoginUser);
          break;
      }
    }

    return result.build();
  }
}

class _$NewUserSerializer implements StructuredSerializer<NewUser> {
  @override
  final Iterable<Type> types = const [NewUser, _$NewUser];
  @override
  final String wireName = 'NewUser';

  @override
  Iterable<Object> serialize(Serializers serializers, NewUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NewUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NewUserRequestSerializer
    implements StructuredSerializer<NewUserRequest> {
  @override
  final Iterable<Type> types = const [NewUserRequest, _$NewUserRequest];
  @override
  final String wireName = 'NewUserRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, NewUserRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(NewUser)),
    ];

    return result;
  }

  @override
  NewUserRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewUserRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(NewUser)) as NewUser);
          break;
      }
    }

    return result.build();
  }
}

class _$UserResponseSerializer implements StructuredSerializer<UserResponse> {
  @override
  final Iterable<Type> types = const [UserResponse, _$UserResponse];
  @override
  final String wireName = 'UserResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, UserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(User)),
    ];

    return result;
  }

  @override
  UserResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateUserSerializer implements StructuredSerializer<UpdateUser> {
  @override
  final Iterable<Type> types = const [UpdateUser, _$UpdateUser];
  @override
  final String wireName = 'UpdateUser';

  @override
  Iterable<Object> serialize(Serializers serializers, UpdateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.bio != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(object.bio,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UpdateUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateUserRequestSerializer
    implements StructuredSerializer<UpdateUserRequest> {
  @override
  final Iterable<Type> types = const [UpdateUserRequest, _$UpdateUserRequest];
  @override
  final String wireName = 'UpdateUserRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, UpdateUserRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UpdateUser)),
    ];

    return result;
  }

  @override
  UpdateUserRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateUserRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UpdateUser)) as UpdateUser);
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileResponseSerializer
    implements StructuredSerializer<ProfileResponse> {
  @override
  final Iterable<Type> types = const [ProfileResponse, _$ProfileResponse];
  @override
  final String wireName = 'ProfileResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, ProfileResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'profile',
      serializers.serialize(object.profile,
          specifiedType: const FullType(Profile)),
    ];

    return result;
  }

  @override
  ProfileResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile)) as Profile);
          break;
      }
    }

    return result.build();
  }
}

class _$SingleArticleResponseSerializer
    implements StructuredSerializer<SingleArticleResponse> {
  @override
  final Iterable<Type> types = const [
    SingleArticleResponse,
    _$SingleArticleResponse
  ];
  @override
  final String wireName = 'SingleArticleResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SingleArticleResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'article',
      serializers.serialize(object.article,
          specifiedType: const FullType(Article)),
    ];

    return result;
  }

  @override
  SingleArticleResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SingleArticleResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'article':
          result.article.replace(serializers.deserialize(value,
              specifiedType: const FullType(Article)) as Article);
          break;
      }
    }

    return result.build();
  }
}

class _$MultipleArticleResponseSerializer
    implements StructuredSerializer<MultipleArticleResponse> {
  @override
  final Iterable<Type> types = const [
    MultipleArticleResponse,
    _$MultipleArticleResponse
  ];
  @override
  final String wireName = 'MultipleArticleResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MultipleArticleResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'articles',
      serializers.serialize(object.articles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Article)])),
      'articlesCount',
      serializers.serialize(object.articlesCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MultipleArticleResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultipleArticleResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Article)]))
              as BuiltList<dynamic>);
          break;
        case 'articlesCount':
          result.articlesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NewArticleSerializer implements StructuredSerializer<NewArticle> {
  @override
  final Iterable<Type> types = const [NewArticle, _$NewArticle];
  @override
  final String wireName = 'NewArticle';

  @override
  Iterable<Object> serialize(Serializers serializers, NewArticle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];
    if (object.tagList != null) {
      result
        ..add('tagList')
        ..add(serializers.serialize(object.tagList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  NewArticle deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagList':
          result.tagList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$NewArticleRequestSerializer
    implements StructuredSerializer<NewArticleRequest> {
  @override
  final Iterable<Type> types = const [NewArticleRequest, _$NewArticleRequest];
  @override
  final String wireName = 'NewArticleRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, NewArticleRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'article',
      serializers.serialize(object.article,
          specifiedType: const FullType(NewArticle)),
    ];

    return result;
  }

  @override
  NewArticleRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewArticleRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'article':
          result.article.replace(serializers.deserialize(value,
              specifiedType: const FullType(NewArticle)) as NewArticle);
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateArticleSerializer implements StructuredSerializer<UpdateArticle> {
  @override
  final Iterable<Type> types = const [UpdateArticle, _$UpdateArticle];
  @override
  final String wireName = 'UpdateArticle';

  @override
  Iterable<Object> serialize(Serializers serializers, UpdateArticle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UpdateArticle deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateArticleRequestSerializer
    implements StructuredSerializer<UpdateArticleRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateArticleRequest,
    _$UpdateArticleRequest
  ];
  @override
  final String wireName = 'UpdateArticleRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UpdateArticleRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'article',
      serializers.serialize(object.article,
          specifiedType: const FullType(UpdateArticle)),
    ];

    return result;
  }

  @override
  UpdateArticleRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateArticleRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'article':
          result.article.replace(serializers.deserialize(value,
              specifiedType: const FullType(UpdateArticle)) as UpdateArticle);
          break;
      }
    }

    return result.build();
  }
}

class _$SingleCommentResponseSerializer
    implements StructuredSerializer<SingleCommentResponse> {
  @override
  final Iterable<Type> types = const [
    SingleCommentResponse,
    _$SingleCommentResponse
  ];
  @override
  final String wireName = 'SingleCommentResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SingleCommentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(Comment)),
    ];

    return result;
  }

  @override
  SingleCommentResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SingleCommentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
              specifiedType: const FullType(Comment)) as Comment);
          break;
      }
    }

    return result.build();
  }
}

class _$MultipleCommentResponseSerializer
    implements StructuredSerializer<MultipleCommentResponse> {
  @override
  final Iterable<Type> types = const [
    MultipleCommentResponse,
    _$MultipleCommentResponse
  ];
  @override
  final String wireName = 'MultipleCommentResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MultipleCommentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'comments',
      serializers.serialize(object.comments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Comment)])),
    ];

    return result;
  }

  @override
  MultipleCommentResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultipleCommentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$NewCommentSerializer implements StructuredSerializer<NewComment> {
  @override
  final Iterable<Type> types = const [NewComment, _$NewComment];
  @override
  final String wireName = 'NewComment';

  @override
  Iterable<Object> serialize(Serializers serializers, NewComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NewComment deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NewCommentRequestSerializer
    implements StructuredSerializer<NewCommentRequest> {
  @override
  final Iterable<Type> types = const [NewCommentRequest, _$NewCommentRequest];
  @override
  final String wireName = 'NewCommentRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, NewCommentRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(NewComment)),
    ];

    return result;
  }

  @override
  NewCommentRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewCommentRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
              specifiedType: const FullType(NewComment)) as NewComment);
          break;
      }
    }

    return result.build();
  }
}

class _$TagsResponseSerializer implements StructuredSerializer<TagsResponse> {
  @override
  final Iterable<Type> types = const [TagsResponse, _$TagsResponse];
  @override
  final String wireName = 'TagsResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, TagsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  TagsResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericErrorModelSerializer
    implements StructuredSerializer<GenericErrorModel> {
  @override
  final Iterable<Type> types = const [GenericErrorModel, _$GenericErrorModel];
  @override
  final String wireName = 'GenericErrorModel';

  @override
  Iterable<Object> serialize(Serializers serializers, GenericErrorModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'errors',
      serializers.serialize(object.errors,
          specifiedType: const FullType(BuiltListMultimap,
              const [const FullType(String), const FullType(String)])),
    ];

    return result;
  }

  @override
  GenericErrorModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenericErrorModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'errors':
          result.errors.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltListMultimap, const [
                const FullType(String),
                const FullType(String)
              ])) as BuiltListMultimap<dynamic, dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String email;
  @override
  final String username;
  @override
  final String token;
  @override
  final String bio;
  @override
  final String image;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.email, this.username, this.token, this.bio, this.image})
      : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('User', 'email');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('User', 'username');
    }
    if (token == null) {
      throw new BuiltValueNullFieldError('User', 'token');
    }
    if (bio == null) {
      throw new BuiltValueNullFieldError('User', 'bio');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('User', 'image');
    }
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        email == other.email &&
        username == other.username &&
        token == other.token &&
        bio == other.bio &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, email.hashCode), username.hashCode), token.hashCode),
            bio.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('email', email)
          ..add('username', username)
          ..add('token', token)
          ..add('bio', bio)
          ..add('image', image))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _username = _$v.username;
      _token = _$v.token;
      _bio = _$v.bio;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            email: email,
            username: username,
            token: token,
            bio: bio,
            image: image);
    replace(_$result);
    return _$result;
  }
}

class _$Profile extends Profile {
  @override
  final String username;
  @override
  final String bio;
  @override
  final String image;
  @override
  final bool following;

  factory _$Profile([void Function(ProfileBuilder) updates]) =>
      (new ProfileBuilder()..update(updates)).build();

  _$Profile._({this.username, this.bio, this.image, this.following})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('Profile', 'username');
    }
    if (image == null) {
      throw new BuiltValueNullFieldError('Profile', 'image');
    }
    if (following == null) {
      throw new BuiltValueNullFieldError('Profile', 'following');
    }
  }

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        username == other.username &&
        bio == other.bio &&
        image == other.image &&
        following == other.following;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, username.hashCode), bio.hashCode), image.hashCode),
        following.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Profile')
          ..add('username', username)
          ..add('bio', bio)
          ..add('image', image)
          ..add('following', following))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  bool _following;
  bool get following => _$this._following;
  set following(bool following) => _$this._following = following;

  ProfileBuilder();

  ProfileBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _bio = _$v.bio;
      _image = _$v.image;
      _following = _$v.following;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Profile build() {
    final _$result = _$v ??
        new _$Profile._(
            username: username, bio: bio, image: image, following: following);
    replace(_$result);
    return _$result;
  }
}

class _$Article extends Article {
  @override
  final String slug;
  @override
  final String title;
  @override
  final String description;
  @override
  final String body;
  @override
  final BuiltList<String> tagList;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final bool favorited;
  @override
  final int favoritesCount;
  @override
  final Profile author;

  factory _$Article([void Function(ArticleBuilder) updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.slug,
      this.title,
      this.description,
      this.body,
      this.tagList,
      this.createdAt,
      this.updatedAt,
      this.favorited,
      this.favoritesCount,
      this.author})
      : super._() {
    if (slug == null) {
      throw new BuiltValueNullFieldError('Article', 'slug');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Article', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Article', 'description');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('Article', 'body');
    }
    if (tagList == null) {
      throw new BuiltValueNullFieldError('Article', 'tagList');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Article', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('Article', 'updatedAt');
    }
    if (favorited == null) {
      throw new BuiltValueNullFieldError('Article', 'favorited');
    }
    if (favoritesCount == null) {
      throw new BuiltValueNullFieldError('Article', 'favoritesCount');
    }
    if (author == null) {
      throw new BuiltValueNullFieldError('Article', 'author');
    }
  }

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        slug == other.slug &&
        title == other.title &&
        description == other.description &&
        body == other.body &&
        tagList == other.tagList &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        favorited == other.favorited &&
        favoritesCount == other.favoritesCount &&
        author == other.author;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, slug.hashCode), title.hashCode),
                                    description.hashCode),
                                body.hashCode),
                            tagList.hashCode),
                        createdAt.hashCode),
                    updatedAt.hashCode),
                favorited.hashCode),
            favoritesCount.hashCode),
        author.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('slug', slug)
          ..add('title', title)
          ..add('description', description)
          ..add('body', body)
          ..add('tagList', tagList)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('favorited', favorited)
          ..add('favoritesCount', favoritesCount)
          ..add('author', author))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  ListBuilder<String> _tagList;
  ListBuilder<String> get tagList =>
      _$this._tagList ??= new ListBuilder<String>();
  set tagList(ListBuilder<String> tagList) => _$this._tagList = tagList;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  bool _favorited;
  bool get favorited => _$this._favorited;
  set favorited(bool favorited) => _$this._favorited = favorited;

  int _favoritesCount;
  int get favoritesCount => _$this._favoritesCount;
  set favoritesCount(int favoritesCount) =>
      _$this._favoritesCount = favoritesCount;

  ProfileBuilder _author;
  ProfileBuilder get author => _$this._author ??= new ProfileBuilder();
  set author(ProfileBuilder author) => _$this._author = author;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _slug = _$v.slug;
      _title = _$v.title;
      _description = _$v.description;
      _body = _$v.body;
      _tagList = _$v.tagList?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _favorited = _$v.favorited;
      _favoritesCount = _$v.favoritesCount;
      _author = _$v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              slug: slug,
              title: title,
              description: description,
              body: body,
              tagList: tagList.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              favorited: favorited,
              favoritesCount: favoritesCount,
              author: author.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tagList';
        tagList.build();

        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Comment extends Comment {
  @override
  final int id;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String body;
  @override
  final Profile author;

  factory _$Comment([void Function(CommentBuilder) updates]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._({this.id, this.createdAt, this.updatedAt, this.body, this.author})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Comment', 'id');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Comment', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('Comment', 'updatedAt');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('Comment', 'body');
    }
    if (author == null) {
      throw new BuiltValueNullFieldError('Comment', 'author');
    }
  }

  @override
  Comment rebuild(void Function(CommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        body == other.body &&
        author == other.author;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), createdAt.hashCode),
                updatedAt.hashCode),
            body.hashCode),
        author.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('body', body)
          ..add('author', author))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  ProfileBuilder _author;
  ProfileBuilder get author => _$this._author ??= new ProfileBuilder();
  set author(ProfileBuilder author) => _$this._author = author;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _body = _$v.body;
      _author = _$v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void Function(CommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    _$Comment _$result;
    try {
      _$result = _$v ??
          new _$Comment._(
              id: id,
              createdAt: createdAt,
              updatedAt: updatedAt,
              body: body,
              author: author.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Comment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LoginUser extends LoginUser {
  @override
  final String email;
  @override
  final String password;

  factory _$LoginUser([void Function(LoginUserBuilder) updates]) =>
      (new LoginUserBuilder()..update(updates)).build();

  _$LoginUser._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('LoginUser', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('LoginUser', 'password');
    }
  }

  @override
  LoginUser rebuild(void Function(LoginUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginUserBuilder toBuilder() => new LoginUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginUser &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginUser')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class LoginUserBuilder implements Builder<LoginUser, LoginUserBuilder> {
  _$LoginUser _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginUserBuilder();

  LoginUserBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginUser;
  }

  @override
  void update(void Function(LoginUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginUser build() {
    final _$result = _$v ?? new _$LoginUser._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$LoginUserRequest extends LoginUserRequest {
  @override
  final LoginUser user;

  factory _$LoginUserRequest(
          [void Function(LoginUserRequestBuilder) updates]) =>
      (new LoginUserRequestBuilder()..update(updates)).build();

  _$LoginUserRequest._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('LoginUserRequest', 'user');
    }
  }

  @override
  LoginUserRequest rebuild(void Function(LoginUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginUserRequestBuilder toBuilder() =>
      new LoginUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginUserRequest && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginUserRequest')..add('user', user))
        .toString();
  }
}

class LoginUserRequestBuilder
    implements Builder<LoginUserRequest, LoginUserRequestBuilder> {
  _$LoginUserRequest _$v;

  LoginUserBuilder _user;
  LoginUserBuilder get user => _$this._user ??= new LoginUserBuilder();
  set user(LoginUserBuilder user) => _$this._user = user;

  LoginUserRequestBuilder();

  LoginUserRequestBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginUserRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginUserRequest;
  }

  @override
  void update(void Function(LoginUserRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginUserRequest build() {
    _$LoginUserRequest _$result;
    try {
      _$result = _$v ?? new _$LoginUserRequest._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NewUser extends NewUser {
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  factory _$NewUser([void Function(NewUserBuilder) updates]) =>
      (new NewUserBuilder()..update(updates)).build();

  _$NewUser._({this.username, this.email, this.password}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('NewUser', 'username');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('NewUser', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('NewUser', 'password');
    }
  }

  @override
  NewUser rebuild(void Function(NewUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewUserBuilder toBuilder() => new NewUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewUser &&
        username == other.username &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, username.hashCode), email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewUser')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class NewUserBuilder implements Builder<NewUser, NewUserBuilder> {
  _$NewUser _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  NewUserBuilder();

  NewUserBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewUser;
  }

  @override
  void update(void Function(NewUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewUser build() {
    final _$result = _$v ??
        new _$NewUser._(username: username, email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$NewUserRequest extends NewUserRequest {
  @override
  final NewUser user;

  factory _$NewUserRequest([void Function(NewUserRequestBuilder) updates]) =>
      (new NewUserRequestBuilder()..update(updates)).build();

  _$NewUserRequest._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('NewUserRequest', 'user');
    }
  }

  @override
  NewUserRequest rebuild(void Function(NewUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewUserRequestBuilder toBuilder() =>
      new NewUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewUserRequest && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewUserRequest')..add('user', user))
        .toString();
  }
}

class NewUserRequestBuilder
    implements Builder<NewUserRequest, NewUserRequestBuilder> {
  _$NewUserRequest _$v;

  NewUserBuilder _user;
  NewUserBuilder get user => _$this._user ??= new NewUserBuilder();
  set user(NewUserBuilder user) => _$this._user = user;

  NewUserRequestBuilder();

  NewUserRequestBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewUserRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewUserRequest;
  }

  @override
  void update(void Function(NewUserRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewUserRequest build() {
    _$NewUserRequest _$result;
    try {
      _$result = _$v ?? new _$NewUserRequest._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserResponse extends UserResponse {
  @override
  final User user;

  factory _$UserResponse([void Function(UserResponseBuilder) updates]) =>
      (new UserResponseBuilder()..update(updates)).build();

  _$UserResponse._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('UserResponse', 'user');
    }
  }

  @override
  UserResponse rebuild(void Function(UserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseBuilder toBuilder() => new UserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponse && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserResponse')..add('user', user))
        .toString();
  }
}

class UserResponseBuilder
    implements Builder<UserResponse, UserResponseBuilder> {
  _$UserResponse _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  UserResponseBuilder();

  UserResponseBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserResponse;
  }

  @override
  void update(void Function(UserResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserResponse build() {
    _$UserResponse _$result;
    try {
      _$result = _$v ?? new _$UserResponse._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateUser extends UpdateUser {
  @override
  final String email;
  @override
  final String token;
  @override
  final String username;
  @override
  final String bio;
  @override
  final String image;

  factory _$UpdateUser([void Function(UpdateUserBuilder) updates]) =>
      (new UpdateUserBuilder()..update(updates)).build();

  _$UpdateUser._({this.email, this.token, this.username, this.bio, this.image})
      : super._();

  @override
  UpdateUser rebuild(void Function(UpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserBuilder toBuilder() => new UpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUser &&
        email == other.email &&
        token == other.token &&
        username == other.username &&
        bio == other.bio &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, email.hashCode), token.hashCode), username.hashCode),
            bio.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateUser')
          ..add('email', email)
          ..add('token', token)
          ..add('username', username)
          ..add('bio', bio)
          ..add('image', image))
        .toString();
  }
}

class UpdateUserBuilder implements Builder<UpdateUser, UpdateUserBuilder> {
  _$UpdateUser _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  UpdateUserBuilder();

  UpdateUserBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _token = _$v.token;
      _username = _$v.username;
      _bio = _$v.bio;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateUser;
  }

  @override
  void update(void Function(UpdateUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateUser build() {
    final _$result = _$v ??
        new _$UpdateUser._(
            email: email,
            token: token,
            username: username,
            bio: bio,
            image: image);
    replace(_$result);
    return _$result;
  }
}

class _$UpdateUserRequest extends UpdateUserRequest {
  @override
  final UpdateUser user;

  factory _$UpdateUserRequest(
          [void Function(UpdateUserRequestBuilder) updates]) =>
      (new UpdateUserRequestBuilder()..update(updates)).build();

  _$UpdateUserRequest._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('UpdateUserRequest', 'user');
    }
  }

  @override
  UpdateUserRequest rebuild(void Function(UpdateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserRequestBuilder toBuilder() =>
      new UpdateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserRequest && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateUserRequest')..add('user', user))
        .toString();
  }
}

class UpdateUserRequestBuilder
    implements Builder<UpdateUserRequest, UpdateUserRequestBuilder> {
  _$UpdateUserRequest _$v;

  UpdateUserBuilder _user;
  UpdateUserBuilder get user => _$this._user ??= new UpdateUserBuilder();
  set user(UpdateUserBuilder user) => _$this._user = user;

  UpdateUserRequestBuilder();

  UpdateUserRequestBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateUserRequest;
  }

  @override
  void update(void Function(UpdateUserRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateUserRequest build() {
    _$UpdateUserRequest _$result;
    try {
      _$result = _$v ?? new _$UpdateUserRequest._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProfileResponse extends ProfileResponse {
  @override
  final Profile profile;

  factory _$ProfileResponse([void Function(ProfileResponseBuilder) updates]) =>
      (new ProfileResponseBuilder()..update(updates)).build();

  _$ProfileResponse._({this.profile}) : super._() {
    if (profile == null) {
      throw new BuiltValueNullFieldError('ProfileResponse', 'profile');
    }
  }

  @override
  ProfileResponse rebuild(void Function(ProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileResponseBuilder toBuilder() =>
      new ProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileResponse && profile == other.profile;
  }

  @override
  int get hashCode {
    return $jf($jc(0, profile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileResponse')
          ..add('profile', profile))
        .toString();
  }
}

class ProfileResponseBuilder
    implements Builder<ProfileResponse, ProfileResponseBuilder> {
  _$ProfileResponse _$v;

  ProfileBuilder _profile;
  ProfileBuilder get profile => _$this._profile ??= new ProfileBuilder();
  set profile(ProfileBuilder profile) => _$this._profile = profile;

  ProfileResponseBuilder();

  ProfileResponseBuilder get _$this {
    if (_$v != null) {
      _profile = _$v.profile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProfileResponse;
  }

  @override
  void update(void Function(ProfileResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileResponse build() {
    _$ProfileResponse _$result;
    try {
      _$result = _$v ?? new _$ProfileResponse._(profile: profile.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'profile';
        profile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SingleArticleResponse extends SingleArticleResponse {
  @override
  final Article article;

  factory _$SingleArticleResponse(
          [void Function(SingleArticleResponseBuilder) updates]) =>
      (new SingleArticleResponseBuilder()..update(updates)).build();

  _$SingleArticleResponse._({this.article}) : super._() {
    if (article == null) {
      throw new BuiltValueNullFieldError('SingleArticleResponse', 'article');
    }
  }

  @override
  SingleArticleResponse rebuild(
          void Function(SingleArticleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SingleArticleResponseBuilder toBuilder() =>
      new SingleArticleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SingleArticleResponse && article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(0, article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SingleArticleResponse')
          ..add('article', article))
        .toString();
  }
}

class SingleArticleResponseBuilder
    implements Builder<SingleArticleResponse, SingleArticleResponseBuilder> {
  _$SingleArticleResponse _$v;

  ArticleBuilder _article;
  ArticleBuilder get article => _$this._article ??= new ArticleBuilder();
  set article(ArticleBuilder article) => _$this._article = article;

  SingleArticleResponseBuilder();

  SingleArticleResponseBuilder get _$this {
    if (_$v != null) {
      _article = _$v.article?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SingleArticleResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SingleArticleResponse;
  }

  @override
  void update(void Function(SingleArticleResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SingleArticleResponse build() {
    _$SingleArticleResponse _$result;
    try {
      _$result = _$v ?? new _$SingleArticleResponse._(article: article.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'article';
        article.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SingleArticleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MultipleArticleResponse extends MultipleArticleResponse {
  @override
  final BuiltList<Article> articles;
  @override
  final int articlesCount;

  factory _$MultipleArticleResponse(
          [void Function(MultipleArticleResponseBuilder) updates]) =>
      (new MultipleArticleResponseBuilder()..update(updates)).build();

  _$MultipleArticleResponse._({this.articles, this.articlesCount}) : super._() {
    if (articles == null) {
      throw new BuiltValueNullFieldError('MultipleArticleResponse', 'articles');
    }
    if (articlesCount == null) {
      throw new BuiltValueNullFieldError(
          'MultipleArticleResponse', 'articlesCount');
    }
  }

  @override
  MultipleArticleResponse rebuild(
          void Function(MultipleArticleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipleArticleResponseBuilder toBuilder() =>
      new MultipleArticleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipleArticleResponse &&
        articles == other.articles &&
        articlesCount == other.articlesCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, articles.hashCode), articlesCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MultipleArticleResponse')
          ..add('articles', articles)
          ..add('articlesCount', articlesCount))
        .toString();
  }
}

class MultipleArticleResponseBuilder
    implements
        Builder<MultipleArticleResponse, MultipleArticleResponseBuilder> {
  _$MultipleArticleResponse _$v;

  ListBuilder<Article> _articles;
  ListBuilder<Article> get articles =>
      _$this._articles ??= new ListBuilder<Article>();
  set articles(ListBuilder<Article> articles) => _$this._articles = articles;

  int _articlesCount;
  int get articlesCount => _$this._articlesCount;
  set articlesCount(int articlesCount) => _$this._articlesCount = articlesCount;

  MultipleArticleResponseBuilder();

  MultipleArticleResponseBuilder get _$this {
    if (_$v != null) {
      _articles = _$v.articles?.toBuilder();
      _articlesCount = _$v.articlesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultipleArticleResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MultipleArticleResponse;
  }

  @override
  void update(void Function(MultipleArticleResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MultipleArticleResponse build() {
    _$MultipleArticleResponse _$result;
    try {
      _$result = _$v ??
          new _$MultipleArticleResponse._(
              articles: articles.build(), articlesCount: articlesCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MultipleArticleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NewArticle extends NewArticle {
  @override
  final String title;
  @override
  final String description;
  @override
  final String body;
  @override
  final BuiltList<String> tagList;

  factory _$NewArticle([void Function(NewArticleBuilder) updates]) =>
      (new NewArticleBuilder()..update(updates)).build();

  _$NewArticle._({this.title, this.description, this.body, this.tagList})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('NewArticle', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('NewArticle', 'description');
    }
    if (body == null) {
      throw new BuiltValueNullFieldError('NewArticle', 'body');
    }
  }

  @override
  NewArticle rebuild(void Function(NewArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewArticleBuilder toBuilder() => new NewArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewArticle &&
        title == other.title &&
        description == other.description &&
        body == other.body &&
        tagList == other.tagList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), description.hashCode), body.hashCode),
        tagList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewArticle')
          ..add('title', title)
          ..add('description', description)
          ..add('body', body)
          ..add('tagList', tagList))
        .toString();
  }
}

class NewArticleBuilder implements Builder<NewArticle, NewArticleBuilder> {
  _$NewArticle _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  ListBuilder<String> _tagList;
  ListBuilder<String> get tagList =>
      _$this._tagList ??= new ListBuilder<String>();
  set tagList(ListBuilder<String> tagList) => _$this._tagList = tagList;

  NewArticleBuilder();

  NewArticleBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _body = _$v.body;
      _tagList = _$v.tagList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewArticle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewArticle;
  }

  @override
  void update(void Function(NewArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewArticle build() {
    _$NewArticle _$result;
    try {
      _$result = _$v ??
          new _$NewArticle._(
              title: title,
              description: description,
              body: body,
              tagList: _tagList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tagList';
        _tagList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewArticle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NewArticleRequest extends NewArticleRequest {
  @override
  final NewArticle article;

  factory _$NewArticleRequest(
          [void Function(NewArticleRequestBuilder) updates]) =>
      (new NewArticleRequestBuilder()..update(updates)).build();

  _$NewArticleRequest._({this.article}) : super._() {
    if (article == null) {
      throw new BuiltValueNullFieldError('NewArticleRequest', 'article');
    }
  }

  @override
  NewArticleRequest rebuild(void Function(NewArticleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewArticleRequestBuilder toBuilder() =>
      new NewArticleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewArticleRequest && article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(0, article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewArticleRequest')
          ..add('article', article))
        .toString();
  }
}

class NewArticleRequestBuilder
    implements Builder<NewArticleRequest, NewArticleRequestBuilder> {
  _$NewArticleRequest _$v;

  NewArticleBuilder _article;
  NewArticleBuilder get article => _$this._article ??= new NewArticleBuilder();
  set article(NewArticleBuilder article) => _$this._article = article;

  NewArticleRequestBuilder();

  NewArticleRequestBuilder get _$this {
    if (_$v != null) {
      _article = _$v.article?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewArticleRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewArticleRequest;
  }

  @override
  void update(void Function(NewArticleRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewArticleRequest build() {
    _$NewArticleRequest _$result;
    try {
      _$result = _$v ?? new _$NewArticleRequest._(article: article.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'article';
        article.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewArticleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateArticle extends UpdateArticle {
  @override
  final String title;
  @override
  final String description;
  @override
  final String body;

  factory _$UpdateArticle([void Function(UpdateArticleBuilder) updates]) =>
      (new UpdateArticleBuilder()..update(updates)).build();

  _$UpdateArticle._({this.title, this.description, this.body}) : super._();

  @override
  UpdateArticle rebuild(void Function(UpdateArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateArticleBuilder toBuilder() => new UpdateArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateArticle &&
        title == other.title &&
        description == other.description &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), description.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateArticle')
          ..add('title', title)
          ..add('description', description)
          ..add('body', body))
        .toString();
  }
}

class UpdateArticleBuilder
    implements Builder<UpdateArticle, UpdateArticleBuilder> {
  _$UpdateArticle _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  UpdateArticleBuilder();

  UpdateArticleBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateArticle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateArticle;
  }

  @override
  void update(void Function(UpdateArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateArticle build() {
    final _$result = _$v ??
        new _$UpdateArticle._(
            title: title, description: description, body: body);
    replace(_$result);
    return _$result;
  }
}

class _$UpdateArticleRequest extends UpdateArticleRequest {
  @override
  final UpdateArticle article;

  factory _$UpdateArticleRequest(
          [void Function(UpdateArticleRequestBuilder) updates]) =>
      (new UpdateArticleRequestBuilder()..update(updates)).build();

  _$UpdateArticleRequest._({this.article}) : super._() {
    if (article == null) {
      throw new BuiltValueNullFieldError('UpdateArticleRequest', 'article');
    }
  }

  @override
  UpdateArticleRequest rebuild(
          void Function(UpdateArticleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateArticleRequestBuilder toBuilder() =>
      new UpdateArticleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateArticleRequest && article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(0, article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateArticleRequest')
          ..add('article', article))
        .toString();
  }
}

class UpdateArticleRequestBuilder
    implements Builder<UpdateArticleRequest, UpdateArticleRequestBuilder> {
  _$UpdateArticleRequest _$v;

  UpdateArticleBuilder _article;
  UpdateArticleBuilder get article =>
      _$this._article ??= new UpdateArticleBuilder();
  set article(UpdateArticleBuilder article) => _$this._article = article;

  UpdateArticleRequestBuilder();

  UpdateArticleRequestBuilder get _$this {
    if (_$v != null) {
      _article = _$v.article?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateArticleRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateArticleRequest;
  }

  @override
  void update(void Function(UpdateArticleRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateArticleRequest build() {
    _$UpdateArticleRequest _$result;
    try {
      _$result = _$v ?? new _$UpdateArticleRequest._(article: article.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'article';
        article.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateArticleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SingleCommentResponse extends SingleCommentResponse {
  @override
  final Comment comment;

  factory _$SingleCommentResponse(
          [void Function(SingleCommentResponseBuilder) updates]) =>
      (new SingleCommentResponseBuilder()..update(updates)).build();

  _$SingleCommentResponse._({this.comment}) : super._() {
    if (comment == null) {
      throw new BuiltValueNullFieldError('SingleCommentResponse', 'comment');
    }
  }

  @override
  SingleCommentResponse rebuild(
          void Function(SingleCommentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SingleCommentResponseBuilder toBuilder() =>
      new SingleCommentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SingleCommentResponse && comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SingleCommentResponse')
          ..add('comment', comment))
        .toString();
  }
}

class SingleCommentResponseBuilder
    implements Builder<SingleCommentResponse, SingleCommentResponseBuilder> {
  _$SingleCommentResponse _$v;

  CommentBuilder _comment;
  CommentBuilder get comment => _$this._comment ??= new CommentBuilder();
  set comment(CommentBuilder comment) => _$this._comment = comment;

  SingleCommentResponseBuilder();

  SingleCommentResponseBuilder get _$this {
    if (_$v != null) {
      _comment = _$v.comment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SingleCommentResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SingleCommentResponse;
  }

  @override
  void update(void Function(SingleCommentResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SingleCommentResponse build() {
    _$SingleCommentResponse _$result;
    try {
      _$result = _$v ?? new _$SingleCommentResponse._(comment: comment.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comment';
        comment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SingleCommentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MultipleCommentResponse extends MultipleCommentResponse {
  @override
  final BuiltList<Comment> comments;

  factory _$MultipleCommentResponse(
          [void Function(MultipleCommentResponseBuilder) updates]) =>
      (new MultipleCommentResponseBuilder()..update(updates)).build();

  _$MultipleCommentResponse._({this.comments}) : super._() {
    if (comments == null) {
      throw new BuiltValueNullFieldError('MultipleCommentResponse', 'comments');
    }
  }

  @override
  MultipleCommentResponse rebuild(
          void Function(MultipleCommentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipleCommentResponseBuilder toBuilder() =>
      new MultipleCommentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipleCommentResponse && comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MultipleCommentResponse')
          ..add('comments', comments))
        .toString();
  }
}

class MultipleCommentResponseBuilder
    implements
        Builder<MultipleCommentResponse, MultipleCommentResponseBuilder> {
  _$MultipleCommentResponse _$v;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  MultipleCommentResponseBuilder();

  MultipleCommentResponseBuilder get _$this {
    if (_$v != null) {
      _comments = _$v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultipleCommentResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MultipleCommentResponse;
  }

  @override
  void update(void Function(MultipleCommentResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MultipleCommentResponse build() {
    _$MultipleCommentResponse _$result;
    try {
      _$result =
          _$v ?? new _$MultipleCommentResponse._(comments: comments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MultipleCommentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NewComment extends NewComment {
  @override
  final String body;

  factory _$NewComment([void Function(NewCommentBuilder) updates]) =>
      (new NewCommentBuilder()..update(updates)).build();

  _$NewComment._({this.body}) : super._() {
    if (body == null) {
      throw new BuiltValueNullFieldError('NewComment', 'body');
    }
  }

  @override
  NewComment rebuild(void Function(NewCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewCommentBuilder toBuilder() => new NewCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewComment && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(0, body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewComment')..add('body', body))
        .toString();
  }
}

class NewCommentBuilder implements Builder<NewComment, NewCommentBuilder> {
  _$NewComment _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  NewCommentBuilder();

  NewCommentBuilder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewComment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewComment;
  }

  @override
  void update(void Function(NewCommentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewComment build() {
    final _$result = _$v ?? new _$NewComment._(body: body);
    replace(_$result);
    return _$result;
  }
}

class _$NewCommentRequest extends NewCommentRequest {
  @override
  final NewComment comment;

  factory _$NewCommentRequest(
          [void Function(NewCommentRequestBuilder) updates]) =>
      (new NewCommentRequestBuilder()..update(updates)).build();

  _$NewCommentRequest._({this.comment}) : super._() {
    if (comment == null) {
      throw new BuiltValueNullFieldError('NewCommentRequest', 'comment');
    }
  }

  @override
  NewCommentRequest rebuild(void Function(NewCommentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewCommentRequestBuilder toBuilder() =>
      new NewCommentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewCommentRequest && comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf($jc(0, comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewCommentRequest')
          ..add('comment', comment))
        .toString();
  }
}

class NewCommentRequestBuilder
    implements Builder<NewCommentRequest, NewCommentRequestBuilder> {
  _$NewCommentRequest _$v;

  NewCommentBuilder _comment;
  NewCommentBuilder get comment => _$this._comment ??= new NewCommentBuilder();
  set comment(NewCommentBuilder comment) => _$this._comment = comment;

  NewCommentRequestBuilder();

  NewCommentRequestBuilder get _$this {
    if (_$v != null) {
      _comment = _$v.comment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewCommentRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewCommentRequest;
  }

  @override
  void update(void Function(NewCommentRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewCommentRequest build() {
    _$NewCommentRequest _$result;
    try {
      _$result = _$v ?? new _$NewCommentRequest._(comment: comment.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'comment';
        comment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewCommentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TagsResponse extends TagsResponse {
  @override
  final BuiltList<String> tags;

  factory _$TagsResponse([void Function(TagsResponseBuilder) updates]) =>
      (new TagsResponseBuilder()..update(updates)).build();

  _$TagsResponse._({this.tags}) : super._() {
    if (tags == null) {
      throw new BuiltValueNullFieldError('TagsResponse', 'tags');
    }
  }

  @override
  TagsResponse rebuild(void Function(TagsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagsResponseBuilder toBuilder() => new TagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagsResponse && tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TagsResponse')..add('tags', tags))
        .toString();
  }
}

class TagsResponseBuilder
    implements Builder<TagsResponse, TagsResponseBuilder> {
  _$TagsResponse _$v;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  TagsResponseBuilder();

  TagsResponseBuilder get _$this {
    if (_$v != null) {
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TagsResponse;
  }

  @override
  void update(void Function(TagsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TagsResponse build() {
    _$TagsResponse _$result;
    try {
      _$result = _$v ?? new _$TagsResponse._(tags: tags.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TagsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GenericErrorModel extends GenericErrorModel {
  @override
  final BuiltListMultimap<String, String> errors;

  factory _$GenericErrorModel(
          [void Function(GenericErrorModelBuilder) updates]) =>
      (new GenericErrorModelBuilder()..update(updates)).build();

  _$GenericErrorModel._({this.errors}) : super._() {
    if (errors == null) {
      throw new BuiltValueNullFieldError('GenericErrorModel', 'errors');
    }
  }

  @override
  GenericErrorModel rebuild(void Function(GenericErrorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericErrorModelBuilder toBuilder() =>
      new GenericErrorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenericErrorModel && errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericErrorModel')
          ..add('errors', errors))
        .toString();
  }
}

class GenericErrorModelBuilder
    implements Builder<GenericErrorModel, GenericErrorModelBuilder> {
  _$GenericErrorModel _$v;

  ListMultimapBuilder<String, String> _errors;
  ListMultimapBuilder<String, String> get errors =>
      _$this._errors ??= new ListMultimapBuilder<String, String>();
  set errors(ListMultimapBuilder<String, String> errors) =>
      _$this._errors = errors;

  GenericErrorModelBuilder();

  GenericErrorModelBuilder get _$this {
    if (_$v != null) {
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericErrorModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenericErrorModel;
  }

  @override
  void update(void Function(GenericErrorModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericErrorModel build() {
    _$GenericErrorModel _$result;
    try {
      _$result = _$v ?? new _$GenericErrorModel._(errors: errors.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericErrorModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
