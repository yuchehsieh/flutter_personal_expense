import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
            Column(
              children: transactions
                  .map(
                    (tx) => Card(
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    color: Colors.deepOrange,
                                    child: Text(
                                      '\$ ${tx.amount.toString()}',
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 40),
                                      color: Colors.amberAccent,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            tx.title,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            DateFormat('yyyy-MM-dd')
                                                .format(tx.date),
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 16),
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
            )
          ],
        ));
  }
}
