library userinfo;

import 'package:flutter/foundation.dart';
import 'data_model.dart';

///
/// Userinfo holds the state of the current user. Notifies listeners if user changed
///
class UserInfo extends ValueNotifier<User> {
  static final UserInfo _userInfo = new UserInfo._internal(null);
  factory UserInfo() {
    return _userInfo;
  }
  User get user => value;
  set user(User user) => value = user;
  UserInfo._internal(User user) : super(user);
}
