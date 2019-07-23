library signup;

export 'signup.dart';

import 'package:flutter/material.dart';
import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/models/userinfo.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Singup"),
      ),
      body: _SignUpStateWidget(),
    );
  }
}

class _SignUpStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SignUpState();
  }
}

class SignUpState extends State<_SignUpStateWidget> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "Username"),
            validator: (value) {
              if (value.isEmpty) {
                return 'username can not be empty';
              }
              return null;
            },
          ),
          TextFormField(
              decoration: InputDecoration(labelText: "Email"),
              validator: (value) {
                if (value.isEmpty) {
                  return "Email can not be empty";
                }
                return null;
              }),
          TextFormField(
            decoration: InputDecoration(labelText: "Passsword"),
            validator: (value) {
              if (value.isEmpty) {
                return "Password can not be empty";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Username"
            ),
            validator: (value){
              if (value.isEmpty) {
                return "Username can not be empty";
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text("Processing data")));
                }
              },
              child: Text("Signup"),
            ),
          )
        ],
      ),
    );
  }
}
