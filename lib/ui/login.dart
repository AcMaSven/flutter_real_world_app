library login;

export 'login.dart';

import 'package:flutter/material.dart';
import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/models/userinfo.dart';

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoginState();
  }
}

class _LoginState extends State<LoginWidget> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _error = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: _email,
            ),
            TextField(
              controller: _password,
            ),

            buildErrorField(),
            FlatButton(
              child: Text("Login"),
              onPressed: () async {
                final LoginUserBuilder loginUser = LoginUserBuilder()
                  ..password = _password.text
                  ..email = _email.text;

                login(loginUser.build()).then((user) {
                  setState(() {
                    _error=false;
                  });

                  Navigator.pushNamed(context, '/');
                }).catchError((error){
                  setState(() {
                    _error=true;
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }
  Widget buildErrorField(){
    if(_error){
      return Text("Email and or Password wrong");
    }
    return Text("");
  }
}
