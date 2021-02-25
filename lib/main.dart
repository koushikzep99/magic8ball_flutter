import 'package:flutter/material.dart';
import 'dart:math';

Color backGroundHex = Color(0xff474673);
Color iconColor = Color(0xffEEC28D);

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: backGroundHex,
        appBar: AppBar(
          title: Text('Ask me Anything'),
          centerTitle: true,
          backgroundColor: backGroundHex,
        ),
        body: BallBody(),
      ),
    ),
  );
}

class BallBody extends StatefulWidget {
  @override
  _BallBodyState createState() => _BallBodyState();
}

class _BallBodyState extends State<BallBody> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/ball$ballNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              splashRadius: 5.0,
              color: iconColor,
              onPressed: () {
                setState(
                  () {
                    ballNumber = Random().nextInt(5) + 1;
                  },
                );
              },
              icon: Icon(Icons.nightlight_round, size: 60),
            ),
          )
        ],
      ),
    );
  }
}
