import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyCounter());

class MyCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCounterState();
}

class MyCounterState extends State<MyCounter> {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          child: Text(
            'You hit the button $_counter times',
            textAlign: TextAlign.center,
            style: _counter % 2 == 0
                ? TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)
                : TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 15),
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: Colors.black,
            child: Text(
              'Click to Count',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                _counter += 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
