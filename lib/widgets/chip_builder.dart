import 'package:flutter/material.dart';
import 'package:not_a_mess/constants/colors.dart';

class ChipBuild extends StatelessWidget {
  final String name;
  const ChipBuild(this.name);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(name, style: TextStyle(color: Colors.white, fontSize: 17),),
      backgroundColor: backgroundColor,
      shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
      padding: const EdgeInsets.all(4),
    );
  }
}

