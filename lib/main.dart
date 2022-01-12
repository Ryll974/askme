import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Ask me anything !",
            style: TextStyle(color: Colors.white,fontSize: 50.0, fontWeight: FontWeight.bold,fontFamily: 'GreatVibes',),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: SafeArea(
          child: Center(
            child: Image(
              image: AssetImage("images/ball1.png"),
            ),
          ),
        ),
      ),
    ),
  );
}