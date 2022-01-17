import 'dart:async';

import 'package:flutter/material.dart';
import 'package:opentrivia_quiz_game_final/view/intro.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'OpenTrivia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff393d4e),
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget
{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState()
  {
    super.initState();
    Timer(const Duration(seconds: 3), () 
    {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Intro()));
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: const Color(0xff393d4e),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Image.asset('assets/otdb.png')
          ],
        ),
      ),
    );
  }
}

