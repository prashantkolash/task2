import 'package:flutter/material.dart';
import 'package:task2/SecondScreen.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'firstScreen',
      routes: {
        'firstScreen': (context) => homeScreen(),
        'secondScreen': (context) => SecondScreen()
      },
    );
  }
}
