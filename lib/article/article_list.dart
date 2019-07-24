library articleList;

import 'package:flutter/material.dart';
import 'package:real_world_flutter_app/models/data_model.dart';
import 'service.dart';

class ArticleListWidget extends StatefulWidget {
  String _token;

  ArticleListWidget(this._token);

  @override
  State<StatefulWidget> createState() {
    return new _ArticleListState(_token, new ArticleService());
  }
}

class _ArticleListTile extends StatelessWidget {
  Article _article;

  _ArticleListTile(this._article);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(
          _article.author.image,
          scale: 0.2,
        ),
      ),
      title: Text(_article.title),
      subtitle: Text(_article.description),
    );
  }
}

class _ArticleListState extends State<ArticleListWidget> {
  String _token;
  ArticleService _service;

  _ArticleListState(this._token, this._service);

  List<Article> _articles = [];

  List<Widget> buildArticleTiles() {
    return _articles.map((article) => new _ArticleListTile(article)).toList();
  }


  @override
  void initState() {
    _service.globals(token: _token).then((apiResponse){
      apiResponse.join((articles){
        setState(() {
          _articles=articles.articles.toList();
        });
      }, (genericError){

      }, (error){

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          _service
              .globals(token: _token)
              .then((apiResponse) => apiResponse.join((articles) {
                    setState(() {
                      _articles = articles.articles.toList();
                    });
                  }, (genericError) {}, (error) {}));
        },
        child: AnimatedCrossFade(
            firstChild: Center(
              child: CircularProgressIndicator(),
            ),
            secondChild: ListView(children: buildArticleTiles()),
            crossFadeState: _articles.isEmpty
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 200)),
      ),
    );
  }
}
