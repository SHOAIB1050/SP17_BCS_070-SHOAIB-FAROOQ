import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/imags/2.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    "SHOAIB FAROOQ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "SP17_BCS_070",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(
              "m.shoaib1050@gmail.com",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text(
              "COMSATS",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text(
              "Freelancer",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.voice_chat),
            title: Text(
              "m.shoaib1050",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              "+92310692XXX",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Burewala Pakistan",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
