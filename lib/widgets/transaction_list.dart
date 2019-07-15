import 'package:flutter/material.dart';
import 'package:personal_expense/widgets/transaction_item.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;
  final Function deleteTransaction;

  TransactionList({
    @required this.userTransaction,
    @required this.deleteTransaction,
  });

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return userTransaction.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.title,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: isLandscape
                      ? constraints.maxHeight * 0.7
                      : constraints.maxHeight * 0.3,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return TransactionItem(
                transaction: userTransaction[index],
                deleteTransaction: deleteTransaction,
              );
//                  Card(
//                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                  child: Container(
//                      width: double.infinity,
//                      padding:
//                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                      child: Row(
//                        children: <Widget>[
//                          Container(
//                            padding: EdgeInsets.all(10),
//                            decoration: BoxDecoration(
//                              border: Border.all(
//                                color: Theme.of(context).primaryColor,
//                                width: 1.0,
//                              ),
////                                      color: Colors.deepOrange,
//                            ),
//                            child: Text(
//                              '\$ ${userTransaction[index].amount.toStringAsFixed(2)}',
//                              textAlign: TextAlign.start,
//                              style: TextStyle(
//                                  fontWeight: FontWeight.w500,
//                                  fontSize: 15,
//                                  color: Theme.of(context).primaryColorDark),
//                            ),
//                          ),
//                          Expanded(
//                            child: Container(
//                              padding: EdgeInsets.only(left: 40),
////                                      color: Colors.amberAccent,
//                              child: Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Text(
//                                    userTransaction[index].title,
//                                    textAlign: TextAlign.start,
//                                    style: Theme.of(context).textTheme.title,
//                                  ),
//                                  Text(
//                                    DateFormat.yMMMd()
//                                        .format(userTransaction[index].date),
//                                    textAlign: TextAlign.start,
//                                    style: TextStyle(
//                                      color: Colors.grey,
//                                      fontSize: 14,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          )
//                        ],
//                      )),
//                );
            },
            itemCount: userTransaction.length,
          );
  }
}
