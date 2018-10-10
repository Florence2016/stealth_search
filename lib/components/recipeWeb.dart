import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class RecipeWeb extends StatelessWidget {
  static String tag = 'search-web';
  final String url;
  final String item;

  //it will take 2 parameters(url & title) from previous screen
  RecipeWeb({Key key, @required this.url,@required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.home),
              onPressed: ()=> print('click home')),
          title: Text("Search for $item"),
        ),
        body:new MaterialApp(
          routes: {
            "/": (_) => new WebviewScaffold(
              url: url,

            ),
          },
        )
    );
  }
}