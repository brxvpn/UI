import 'package:flutter/material.dart';
import 'screens/home_pafe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chameleon VPN',
      home: const HomePage(),
    );
  }
}
