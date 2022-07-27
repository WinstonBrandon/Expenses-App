import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter App', home: MyAppHomepage());
  }
}

class MyAppHomepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
