
import 'dart:html';

import 'package:flutter/material.dart';

import './widgets/transaction_userinput.dart';
import './widgets/transaction_dummyinput.dart';
import './widgets/transactioninput_tolist.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.purple[100],
            child: Text(
              'CHART',
            ),
          ),
          TransactionInputState(),
        ],
      ),
    );
  }
}
