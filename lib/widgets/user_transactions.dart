import 'package:flutter/material.dart';

import 'package:personal_expense/models/transaction.dart';
import 'transaction_list.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', amount: 69.99, title: 'New Shoes', date: DateTime.now()),
    Transaction(id: 't2', amount: 19.99, title: 'Dinner', date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
      title: txTitle,
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(userTransaction: _userTransaction),
      ],
    );
  }
}
