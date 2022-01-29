import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    Center(
      child: Text(
        "Hello flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.red,
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
