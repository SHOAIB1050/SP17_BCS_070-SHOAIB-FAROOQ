import 'package:dis_app/Hard.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class HardResult extends StatelessWidget {
  HardResult({@required this.point, this.wrong});
  var point;
  var wrong;
  String result;
  @override
  Widget build(BuildContext context) {
    if (point == wrong) {
      result = "YOU SELECTED CORRECT ANSWER ";
    } else {
      result = "YOU SELECTED WRONG ANSWER \n CORRECT ANSWER IS $point";
    }
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(primarySwatch: Colors.green),
      home: SSplach(r: result),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SSplach extends StatefulWidget {
  var r;
  SSplach({Key key, this.r}) : super(key: key);
  @override
  _SSplachState createState() => _SSplachState(r);
}

class _SSplachState extends State<SSplach> {
  _SSplachState(this.r);
  var r;
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => Hard())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('RESULT'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Center(
              child: Text(
                'YOUR RESULT',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Center(
              child: Text(
                r,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
