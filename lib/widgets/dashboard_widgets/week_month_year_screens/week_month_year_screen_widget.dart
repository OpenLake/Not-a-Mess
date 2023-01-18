import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../horizontal_bar_chart_creation/horizontal_bar_chart_creation.dart';
import '../line_chart_creation/line_chart_generator.dart';

class WeekMonthYearScreenGenerator extends StatelessWidget {
  final List<List<double>> dataLineChart;
  final List<FoodData> dataForHorizontalBar;
  final String title; // Either "week", "month" or "year"
  final double? heightOfHorizontalBar;
  const WeekMonthYearScreenGenerator({required this.title, required this.dataLineChart ,required this.dataForHorizontalBar, this.heightOfHorizontalBar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30,),
        Text("${title}ly Stats", style: TextStyle(color: Colors.white, fontSize: 28),),
        SizedBox(height: 30,),
        Text("Aggregate Ratings", style: TextStyle(color: Colors.white, fontSize: 17),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("(the chart can be scrollable)", style: TextStyle(color: Colors.white, fontSize: 15),),
        ),
        LineChartGenerator(weekMonthOrYear: title.toLowerCase(), data: dataLineChart,),
        const SizedBox(height: 50,),
        HorizontalBarChart(
            heightOfChart: heightOfHorizontalBar,
            dataForHorizontalBar),
      ],
    );
  }
}
