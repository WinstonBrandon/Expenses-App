import 'package:flutter/material.dart';

class TransactionUserInput extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  TransactionUserInput(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Title'),
          controller: titleController,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Amount'),
          controller: amountController,
        ),
        FlatButton(
            child: Text(
              'Add Transaction',
              style: TextStyle(color: Colors.purple),
            ),
            onPressed: () {
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
            }),
      ],
    );
  }
}
