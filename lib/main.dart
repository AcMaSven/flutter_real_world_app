import 'package:flutter/material.dart';
import 'package:real_world_flutter_app/api.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'package:real_world_flutter_app/ui/navigation.dart';
import 'dart:developer' as developer;
import 'api.dart';
import 'package:real_world_flutter_app/ui/login.dart';
import 'package:real_world_flutter_app/ui/signup.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/login': (context) => LoginWidget(),
        '/signup': (context) => SignUpWidget()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
    @override
  State<StatefulWidget> createState() {
    return new MyHomePageState();

  }
}

class MyHomePageState extends State<MyHomePage>{
  List<Article> _articles = [];

  @override
  void initState() {
    super.initState();
    getArticles().then((articles){
      setState(() {

      });
    });

  }

  List<Widget> buildListTiles(){
    return _articles.map((article)=> ListTile(
      leading: CircleAvatar(
        child:  Image.network(article.author.image,scale: 0.2),

      ),
      title: Text(article.title),
      subtitle: Text(article.description),


    )).toList();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: RefreshIndicator(
        onRefresh: () async {
          getArticles().then((articles){
            setState(() {

            });
          });
        },
        child: AnimatedCrossFade(
          duration: Duration(milliseconds: 300),
          firstChild: Center(
            child: CircularProgressIndicator(),
          ),
          secondChild: ListView(children: buildListTiles()),
          crossFadeState: _articles != null
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Navbar()
      ),
    );
  }
}

