import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:not_a_mess/constants/colors.dart';

class ChipBuild extends StatelessWidget {
  final String name;
  final double? fontSize;
  final String path;
  const ChipBuild(this.name, this.path,  {this.fontSize});

  @override
  Widget build(BuildContext context) {
    double? defaultFontSize = 17.0;
    if (fontSize != null){
      defaultFontSize = fontSize;
    };
    return ActionChip(
      onPressed: (){
        context.pushReplacement(path);
      },
      label: Text(name, style: TextStyle(color: Colors.white, fontSize: defaultFontSize),),
      backgroundColor: backgroundColor,
      shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
      padding: const EdgeInsets.all(4),
    );
  }
}

