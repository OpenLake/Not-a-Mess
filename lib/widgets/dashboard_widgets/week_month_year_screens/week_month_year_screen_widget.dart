import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../horizontal_bar_chart_creation/horizontal_bar_chart_creation.dart';
import '../line_chart_creation/line_chart_generator.dart';

class WeekMonthYearScreenGenerator extends StatelessWidget {
  final List<FoodData> dataForHorizontalBar;
  final String title; // Either "week", "month" or "year"
  final double? heightOfHorizontalBar;
  const WeekMonthYearScreenGenerator({super.key, required this.title,required this.dataForHorizontalBar, this.heightOfHorizontalBar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30,),
        Text("${title}ly Stats", style: TextStyle(color: Colors.white, fontSize: 28),),
        SizedBox(height: 30,),
        Text("Aggregate Ratings", style: TextStyle(color: Colors.white, fontSize: 17),),
        LineChartGenerator(),
        const SizedBox(height: 50,),
        HorizontalBarChart(
            heightOfChart: heightOfHorizontalBar,
            dataForHorizontalBar),
      ],
    );
  }
}
