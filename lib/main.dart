import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BallState();
  }
}

class _BallState extends State<Ball> {
  int currentBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          currentBallNumber = Random().nextInt(5) + 1;
        });
      },
      child: Center(
        child: Image.asset('images/ball$currentBallNumber.png'),
      ),
    );
  }
}
