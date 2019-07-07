import 'package:flutter/material.dart';

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
