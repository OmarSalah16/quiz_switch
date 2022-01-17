import 'package:flutter/material.dart';
import 'package:opentrivia_quiz_game_final/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff19222C),
      ),
      home: Home(),
    );
  }
}
