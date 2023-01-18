import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_a_mess/services/route_constants.dart';
import 'constants/colors.dart';
import 'package:go_router/go_router.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: <Widget>[
            SizedBox(height: 0.23*(MediaQuery. of(context). size. height),),
            Text("Register", style: TextStyle(color: primaryColor, fontSize: 50),),
            SizedBox(height: 25,),
            TextButton.icon(
                onPressed: (){
                  context.pushNamed(RouteConstants.menu);
                },
                icon: Icon(Icons.school, color: backgroundColor,),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 35),
                  backgroundColor: Colors.white,
                ),
                label: Text("Student", style: TextStyle(color: backgroundColor, fontSize: 32),)
            ),
            SizedBox(height: 15,),
            TextButton.icon(
                onPressed: (){
                  context.pushNamed(RouteConstants.dashboard);
                },
                icon: Icon(Icons.food_bank, color: backgroundColor,),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  backgroundColor: Colors.white,
                ),
                label: Text("Maintainer", style: TextStyle(color: backgroundColor, fontSize: 32),)
            ),
            SizedBox(height: 0.15*(MediaQuery. of(context). size. height)),
            Image(image: AssetImage("./assets/logo.png"), color: Colors.white, height: 0.15*(MediaQuery. of(context). size. height),),
            Text("Not-A-Mess", style: TextStyle(color: Colors.white, fontSize: 0.07*(MediaQuery. of(context). size. width)),)
          ],
        ),
      ),
    );
  }
}

