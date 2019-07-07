import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', amount: 69.99, title: 'New Shoes', date: DateTime.now()),
    Transaction(id: 't2', amount: 19.99, title: 'Dinner', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 50, bottom: 50),
                alignment: Alignment.center,
                child: Text('CHART HERE'),
              ),
              elevation: 5,
            ),
            Card(
              child: Text('List of TX'),
            )
          ],
        ));
  }
}
