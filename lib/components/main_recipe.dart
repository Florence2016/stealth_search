import 'package:flutter/material.dart';
import 'package:stealth/components/recipeWeb.dart';
import 'package:stealth/components/searchWIdget.dart';


class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    SearchRecipeWidget.tag: (context) => SearchRecipeWidget(),
    RecipeWeb.tag: (context) =>RecipeWeb(url: null, item: null,)
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stealth',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[900],
        accentColor: Colors.blueGrey[100],
      ),
      home: SearchRecipeWidget(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}