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
        : ListView(
            children: userTransaction.map((tx) {
              return TransactionItem(
                key: ValueKey(tx.id),
                transaction: tx,
                deleteTransaction: deleteTransaction,
              );
            }).toList(),
          );
    // ListView.builder(
    //     itemBuilder: (ctx, index) {
    //       return TransactionItem(
    //         key: ValueKey(userTransaction[index].id),
    //         transaction: userTransaction[index],
    //         deleteTransaction: deleteTransaction,
    //       );
    //     },
    //     itemCount: userTransaction.length,
    //   );
  }
}
