import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:not_a_mess/registration.dart';
import 'package:not_a_mess/widgets/chip_builder.dart';
import 'package:not_a_mess/widgets/choice_chip_buider.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/bar_chart.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/vertical_bar_chart.txt';
import 'package:not_a_mess/widgets/star_rating.dart';
import 'constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(
              fontSize: 16.0, color: Colors.white, fontFamily: 'Hind'),
        ),
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Text(
                "Dashboard",
                style: TextStyle(color: primaryColor, fontSize: 40),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChipBuild("Day", fontsize: 24),
                  ChipBuild("Week", fontsize: 24),
                  ChipBuild("Month", fontsize: 24),
                  ChipBuild("Year", fontsize: 24),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0.16*(MediaQuery. of(context). size. width)),
                child: Rating(),
              ),
            Container(
                height: double.maxFinite,
                width: double.maxFinite,
                  child: BarChartWidget()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
