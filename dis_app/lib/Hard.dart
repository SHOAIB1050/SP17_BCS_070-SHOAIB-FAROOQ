import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'Button_Generated.dart';

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
  int center_image = 0;

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
                  center_image = Random().nextInt(6);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Button_Generated(value: center_image + 1),
                    ),
                  );
                },
              );
            },
            child: Image.asset('assets/imags/dice$center_image.png'),
          ),
        ),
        SizedBox(height: 50)
      ],
    );
  }
}
