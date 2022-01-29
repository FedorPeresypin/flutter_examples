import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => {
            setState(() {
              count++;
            })
          },
          icon: Icon(
            Icons.add_rounded,
          ),
        ),
        Text(count.toString()),
        IconButton(
          onPressed: () => {
            setState(() {
              count--;
            })
          },
          icon: Icon(Icons.remove_circle_rounded),
        ),
      ],
    );
  }
}
