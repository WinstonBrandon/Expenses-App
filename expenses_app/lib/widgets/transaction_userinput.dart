import 'package:flutter/material.dart';

class TransactionUserInput extends StatelessWidget {
  
final titleController = TextEditingController();
final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Title'),controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),controller: amountController,
              ),
              FlatButton(
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: () {print(titleController.text);
                  print(amountController.text);}),
            ],
          );
  }
}