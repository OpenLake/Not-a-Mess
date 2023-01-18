import 'package:flutter/material.dart';
import 'package:not_a_mess/constants/colors.dart';

class Data{
  final int id;
  final String name;
  final double y;
  final color = primaryColor;

  const Data({
   required this.name,
   required this.id,
   required this.y
});
}