import 'package:flutter/material.dart';
import 'package:water/home/Result.dart';
import 'package:water/home/Start.dart';
import 'home/HomePage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: HomePage(),
      routes: {
        Start.id: (context) => Start(),
        Result.id: (context) => Result(),
      },
    );
  }
}
