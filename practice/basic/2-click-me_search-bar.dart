import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Chameleon"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              splashColor: Colors.teal.shade50,
              icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
        ],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Click me",
              textDirection: TextDirection.ltr,
            )),
      ),
    ),
  ));
}
