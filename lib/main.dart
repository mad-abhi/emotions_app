import 'package:demo/StartPage.dart';
import 'package:demo/MainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(), title: 'Emotions App', home: StartPage());
  }
}
