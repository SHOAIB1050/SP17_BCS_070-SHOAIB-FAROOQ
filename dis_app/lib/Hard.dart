import 'package:flutter/material.dart';
import 'dart:math';

class Hard extends StatefulWidget {
  @override
  _HardState createState() => _HardState();
}

class _HardState extends State<Hard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('Hard LEVEL'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Dice(),
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Are you sure to exit"),
        actions: [
          FlatButton(
            child: Text("NO"),
            onPressed: () => Navigator.pop(context, false),
          ),
          FlatButton(
            child: Text("Yes"),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int right_image = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(
                () {
                  right_image = Random().nextInt(6);
                },
              );
            },
            child: Image.asset('assets/imags/dice$right_image.png'),
          ),
        ),
        SizedBox(height: 50),
        FlatButton(
          child: Container(
            child: Center(
              child: (Text(
                'PLAY',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Satisfy'),
              )),
            ),
            margin: EdgeInsets.all(30.0),
            height: 60,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadiusDirectional.circular(20.0)),
          ),
        )
      ],
    );
  }
}
