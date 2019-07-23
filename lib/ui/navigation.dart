library navigation;

export 'navigation.dart';
import 'package:flutter/material.dart';
import 'package:real_world_flutter_app/models/userinfo.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
class Navbar extends StatefulWidget{

  @override
  Widget build(BuildContext context) {

  }



  @override
  State<StatefulWidget> createState() {
    return new _NavbarState();
  }
}


class _NavbarState extends State<Navbar>{

  User _currentUser = null;

  @override
  void initState() {
    super.initState();
    UserInfo info = new UserInfo();
    info.addListener(() {
      setState(() {
        _currentUser=new UserInfo().user;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: <Widget>[


        FlatButton(

          onPressed: () {
            Navigator.pushNamed(context, '/signup');
          },
          color: Colors.green,
          child: Text("Sign up"),
        ),
        buildLogin(context),
        buildSettings(context),
        FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          color: Colors.green,
          child: Text("Home"),
        ),

      ],
    );
  }
  FlatButton buildSettings(BuildContext context){
    return _currentUser!=null?FlatButton(
      onPressed: (){
        Navigator.pushNamed(context, '/settings');
      },
      color: Colors.green,
      child: Text("Settings"),
    ):null;
  }

  FlatButton buildLogin(BuildContext context){
    return _currentUser==null? FlatButton(
      onPressed: (){
        Navigator.pushNamed(context, '/login');
      },
      color: Colors.green,
      child: Text("Login"),
    ): null;
  }

}



