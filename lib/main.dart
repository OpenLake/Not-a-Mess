import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:not_a_mess/registration.dart';
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
      home: Register(),
    ),
  );
}



