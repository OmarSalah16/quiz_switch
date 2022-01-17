// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:opentrivia_quiz_game_final/view/sign_in.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to OpenTrivia',
      home: Scaffold(
        backgroundColor: Color(0xff393d4e),
        // appBar: AppBar
        // (
        //   title: const Text('Welcome to OpenTrivia'),
        // ),
        body: Center(
            child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              Image.asset('assets/otdb.png', height: 200),
              Text(
                  "OpenTrivia is an online database that stores questions of different categories & difficulties.",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center),
              SizedBox(height: 25),
              Text(
                  "There are over 20 Categories of different questions in OpenTrivia DB.",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center),
              SizedBox(height: 25),
              Text(
                  "OpenTrivia allows you to choose the level of difficulty of the questions from (Easy, Medium, Hard).",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center),
              SizedBox(height: 35),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // primary: Colors.redAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding:
                          EdgeInsets.all(20) //content padding inside button
                      ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => Login()));
                  },
                  child:
                      Text("Proceed to Login", style: TextStyle(fontSize: 20))),
            ],
          ),
        )),
      ),
    );
  }
}
