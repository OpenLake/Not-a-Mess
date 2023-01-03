import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:not_a_mess/constants/colors.dart';

class ChipBuild extends StatelessWidget {
  final String name;
  final double? fontsize;
  const ChipBuild(this.name, {this.fontsize});

  @override
  Widget build(BuildContext context) {
    double? defaultFontSize = 17.0;
    if (fontsize != null){
      defaultFontSize = fontsize;
    };
    return Chip(
      label: Text(name, style: TextStyle(color: Colors.white, fontSize: defaultFontSize),),
      backgroundColor: backgroundColor,
      shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
      padding: const EdgeInsets.all(4),
    );
  }
}

