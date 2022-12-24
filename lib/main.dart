import 'dart:ffi';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001F3D),
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text("Register", style: TextStyle(fontWeight: FontWeight.w700,fontSize: 50, color: Color(0xffFF6868),)),
            ),
            TextButton.icon(
              onPressed: () {
                print("Testing this");
              },
              icon: Icon(Icons.school),
              label: Text("Student", style: TextStyle(fontSize: 34)),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xff001F3D),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 62)),
            ),
            SizedBox(height: 15),
            TextButton.icon(
              onPressed: () {
                print("Testing this");
              },
              icon: Icon(Icons.food_bank),
              label: Text("Maintainer", style: TextStyle(fontSize: 34)),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xff001F3D),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40)),
            ),
            SizedBox(height: 100),
            Image(image: AssetImage("assets/logo.png"), color: Colors.white, height: 100,),
            Text("Not A Mess", style: TextStyle(fontSize: 25, fontWeight:FontWeight.w900, color: Colors.white))
          ],
        ),
      ),
    );
  }
}