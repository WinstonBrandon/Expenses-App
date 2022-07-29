import 'package:flutter/material.dart';
import './transaction_dummyinput.dart';
import './transaction_userinput.dart';
import '../class model/transaction.dart';

class TransactionInputState extends StatefulWidget {
  @override
  State<TransactionInputState> createState() => _TransactionInputStateState();
}

class _TransactionInputStateState extends State<TransactionInputState> {
  List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 39.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly grocceries',
      amount: 17.25,
      date: DateTime.now(),
    )
  ];

  void _addNewText(String titleTx, double amountTx) {
    final _addNew = Transaction(
      title: titleTx,
      amount: amountTx,
      date: DateTime.now(),
      id: DateTime.now.toString(),
    );
    setState(() {
      _transactions.add(_addNew);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TransactionUserInput(_addNewText),
      TransactionList(_transactions),
    ]);
  }
}
