import 'package:flutter/material.dart';
import 'dart:math';
import 'HardResult.dart';

class Button_Generated extends StatefulWidget {
  var value;
  Button_Generated({Key key, this.value}) : super(key: key);
  @override
  _Button_GeneratedState createState() => _Button_GeneratedState(value);
}

class _Button_GeneratedState extends State<Button_Generated> {
  _Button_GeneratedState(this.value);
  var value;
  @override
  int a = Random().nextInt(6);
  int b = Random().nextInt(6);
  int c = Random().nextInt(6);
  int d = Random().nextInt(6);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text(
            "GUSES GENERATED NUMBER!!!",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Quando'),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HardResult(point: value, wrong: d),
                      ),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: (Text(
                        d.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Satisfy'),
                      )),
                    ),
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(20.0)),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HardResult(point: value, wrong: a),
                      ),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: (Text(
                        a.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Satisfy'),
                      )),
                    ),
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(20.0)),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HardResult(point: value, wrong: b),
                      ),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: (Text(
                        b.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Satisfy'),
                      )),
                    ),
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(20.0)),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HardResult(point: value, wrong: c),
                      ),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: (Text(
                        c.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Satisfy'),
                      )),
                    ),
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(20.0)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
