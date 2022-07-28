import 'package:flutter/material.dart';
import '../class model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  List<Transaction> transactions = [
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

  @override
  Widget build(BuildContext context) {
  return Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                        ),
                      ),
                      child: Text(
                        '\$${tx.amount}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Card(
                          child: Text(
                            DateFormat.yMMMd().format(tx.date),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          );

  }
}