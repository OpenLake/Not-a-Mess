import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:not_a_mess/widgets/chip_builder.dart';
import 'package:not_a_mess/widgets/choice_chip_buider.dart';
import 'package:not_a_mess/widgets/star_rating.dart';
import 'constants/colors.dart';

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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              child: Text(
                "NARIYAL CHUTNEY",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.18*(MediaQuery. of(context). size. width)),
              child: Rating(),
            ),

            SizedBox(
              height: 50,
            ),

            Wrap(spacing: 8, children: <Widget>[
              ChoiceChipBuild("undercooked"),
              ChoiceChipBuild("too oily"),
              ChoiceChipBuild("too spicy"),
              ChoiceChipBuild("overcooked"),
              ChoiceChipBuild("needs more salt"),
              ChoiceChipBuild("stale")
            ]),
          ],
        ),
      ),
    );
  }
}

