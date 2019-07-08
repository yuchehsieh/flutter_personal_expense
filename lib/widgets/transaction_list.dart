import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;

  TransactionList({@required this.userTransaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: userTransaction
          .map(
            (tx) => Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
//                                      color: Colors.deepOrange,
                            ),
                            child: Text(
                              '\$ ${tx.amount}',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 40),
//                                      color: Colors.amberAccent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    tx.title,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    DateFormat.yMMMd().format(tx.date),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
          )
          .toList(),
    );
  }
}
