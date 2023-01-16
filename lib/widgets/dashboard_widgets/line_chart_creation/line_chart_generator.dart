import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../indicator.dart';

// Currently this widget is hardcoded.
// A constructor can be created to retrieve the data in the form of nested list
// the data can be mapped into the LineBarsData using the method
// LineChartBarDataHandler created just below this widget

class LineChartGenerator extends StatelessWidget {
  // const LineChartGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 0.7*MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: LineChart(
              LineChartData(
                titlesData: LineTitles.getTitleData(),
                maxX: 5,
                maxY: 5,
                minX: 0,
                minY: 0,
                gridData: FlGridData(
                    show: true, horizontalInterval: 1, verticalInterval: 1),
                borderData: FlBorderData(
                    show: true, border: Border.all(color: Colors.white, width: 1)),
                lineBarsData: [
                  LineChartBarDataHandler(Colors.lightGreenAccent, [2, 4.3, 1, 3]),
                  LineChartBarDataHandler(Colors.blue, [5, 2, 4, 3]),
                  LineChartBarDataHandler(Colors.white, [4, 3, 2, 1]),
                  LineChartBarDataHandler(Colors.deepOrange, [3, 4, 3, 2])
                ],
              ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Indicator(color: Colors.lightGreenAccent, text: "Breakfast", isSquare: false),
            Indicator(color: Colors.blue, text: "Lunch", isSquare: false),
            Indicator(color: Colors.white, text: "Snacks", isSquare: false),
            Indicator(color: Colors.deepOrange, text: "Dinner", isSquare: false),
          ],
        )
      ],
    );
  }
}

// Created a method to handle the LineChartBarData easily
LineChartBarDataHandler(Color color, List<double> data) {
  List<FlSpot> spots = [];
  for (int i = 1; i <= 4; i++) {
    spots.add(FlSpot(i.roundToDouble(), data[i - 1]));
  }
  return LineChartBarData(
    color: color,
    barWidth: 3,
    spots: spots,
    dotData: FlDotData(
      show: true,
    ),
  );
}

// Class to handle the titles on the axes
class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, _) {
              if (value == 1.0) {
                return Text("Week 1");
              } else if (value == 2.0) {
                return Text("Week 1");
              } else if (value == 3.0) {
                return Text("Week 3");
              } else if (value == 4.0) {
                return Text("Week 4");
              } else {
                return Text("");
              }
            },
          ),
        ),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );
}
