import 'package:flutter/material.dart';

class Hard extends StatefulWidget {
  @override
  _HardState createState() => _HardState();
}

class _HardState extends State<Hard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Hard LEVEL'),
        backgroundColor: Colors.purpleAccent,
      ),
    );
    ;
  }
}
