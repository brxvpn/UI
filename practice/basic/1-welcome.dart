import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Center(
    child: Text(
      "Welcome",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 40, color: Colors.teal, fontWeight: FontWeight.bold),
    ),
  ));
}
