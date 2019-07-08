import 'package:flutter/material.dart';

import 'package:personal_expense/widgets/user_transactions.dart';

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
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 50, bottom: 50),
                alignment: Alignment.center,
                child: Text('CHART HERE'),
              ),
              elevation: 5,
            ),
            UserTransactions()
          ],
        ));
  }
}
