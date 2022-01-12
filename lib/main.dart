import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Ask me anything !",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontFamily: 'GreatVibes',
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int BallNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: TextButton(
        child: Image(
          image: AssetImage("images/ball$BallNumber.png"),
        ),
        onPressed: () {
          setState(() {
            BallNumber = Random().nextInt(5) + 1;
          });
          print("test boule divination");
        },
      )),
    );
  }
}
