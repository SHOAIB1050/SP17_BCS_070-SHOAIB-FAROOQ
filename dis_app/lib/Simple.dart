import 'package:flutter/material.dart';

import 'SimpleDics.dart';

class Simple extends StatefulWidget {
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('SIMPLE LEVEL'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Dice(),
    );
  }
}
