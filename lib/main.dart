import 'package:flutter/material.dart';
import 'package:potrtfolio/UI/Home.dart';
import 'Model/WebPageTransitionDisabler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdul Momen',
      theme: ThemeData(pageTransitionsTheme: NoTransitionsOnWeb()),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
