import 'package:flutter/material.dart';
import 'counter.dart';

void main(List<String> args) {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Counter App',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Press\'+\' to increment'),
              Counter(),
              Text('Press\'-\' to decrement')
            ],
          ),
        ),
      ),
    );
  }
}
