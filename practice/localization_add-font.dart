import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localizations Sample App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa', ''), // Farsi
      ],
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text(
              "فیلترشکن",
              style: TextStyle(fontFamily: 'BYekan'),
            ),
          ),
          body: myWidget())));
}

class myWidget extends StatelessWidget {
  const myWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Welcome"),
    );
  }
}
