import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'data.dart';

class BarData{
  static int interval = 5;

  static List<Data> barData = [
    const Data(
      id:0,
      name : 'Breakfast',
      y: 4.5,
    ),
    const Data(
      id:1,
      name : 'Lunch',
      y: 3.4,
    ),
    const Data(
      id:2,
      name : 'Snacks',
      y: 4.3,
    ),
    const Data(
      id:3,
      name : 'Dinner',
      y: 3.9,
    ),
  ];
}