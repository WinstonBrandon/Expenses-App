import 'package:flutter/material.dart';
import './transaction_dummyinput.dart';
import './transaction_userinput.dart';

class TransactionInputState extends StatefulWidget {
  const TransactionInputState({Key? key}) : super(key: key);

  @override
  State<TransactionInputState> createState() => _TransactionInputStateState();
}

class _TransactionInputStateState extends State<TransactionInputState> {
  @override
  Widget build(BuildContext context) {
    return Column(children:[
      TransactionUserInput(),
          TransactionList(),
    ]);

  }
}