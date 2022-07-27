import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter App', home: MyAppHomepage());
  }
}

class MyAppHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Expenses App',
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Text('CHART'),
          ),
          Card(
            child: Text('LIST OF TX'),
          ),
        ],
      ),
    );
  }
}
