import 'package:flutter/cupertino.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../indicator.dart';

class LineChartGenerator extends StatelessWidget {
  final String weekMonthOrYear; // need input as "week", "month" or "year"
  final List<List<double>> data; // list of dimensions 4 x n where n = 7 for week, 4 for month and 12 for year.
  const LineChartGenerator({super.key, required this.weekMonthOrYear, required this.data});
  static Map<String, double> valForMaxX = {
    "week":7,
    "month":4,
    "year":12
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(
              constraints: BoxConstraints(maxWidth: valForMaxX[weekMonthOrYear]!.toDouble()*100),
              height: 0.7*MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                child: LineChart(
                  LineChartData(
                    titlesData: LineTitles.getTitleData(weekMonthOrYear),
                    maxX: valForMaxX[weekMonthOrYear]! + 1, // + 1 is done just to avoid the graph touch the boundary of the cartesian.
                    maxY: 5,
                    minX: 0,
                    minY: 0,
                    gridData: FlGridData(
                        show: true, horizontalInterval: 1, verticalInterval: 1),
                    borderData: FlBorderData(
                        show: true, border: Border.all(color: Colors.white, width: 1)),
                    lineBarsData: [
                      LineChartBarDataHandler(Colors.lightGreenAccent, data[0]),
                      LineChartBarDataHandler(Colors.blue, data[1]),
                      LineChartBarDataHandler(Colors.white, data[2]),
                      LineChartBarDataHandler(Colors.deepOrange, data[3])
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
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
  for (int i = 1; i <= data.length; i++) {
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
  static getTitleData(String timePeriod) => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, _) {
              if(timePeriod == "month"){
                if (value == 1.0) {
                return Text("Week 1");
              } else if (value == 2.0) {
                return Text("Week 2");
              } else if (value == 3.0) {
                return Text("Week 3");
              } else if (value == 4.0) {
                return Text("Week 4");
              } else {
                return Text("");
              }
            }
              else if(timePeriod == "week"){
                  if (value == 1.0) {
                    return Text("Monday");
                  } else if (value == 2.0) {
                    return Text("Tuesday");
                  } else if (value == 3.0) {
                    return Text("Wednesday");
                  } else if (value == 4.0) {
                    return Text("Thursday");
                  } else if (value == 5.0) {
                    return Text("Friday");
                  } else if (value == 6.0) {
                    return Text("Saturday");
                  } else if (value == 7.0) {
                    return Text("Sunday");
                  } else {
                    return Text("");
                  }
                }
              else{
                if (value == 1.0) {
                  return Text("January");
                } else if (value == 2.0) {
                  return Text("February");
                } else if (value == 3.0) {
                  return Text("March");
                } else if (value == 4.0) {
                  return Text("April");
                } else if (value == 5.0) {
                  return Text("May");
                } else if (value == 6.0) {
                  return Text("June");
                } else if (value == 7.0) {
                  return Text("July");
                } else if (value == 8.0) {
                  return Text("August");
                } else if (value == 9.0) {
                  return Text("September");
                } else if (value == 10.0) {
                  return Text("October");
                } else if (value == 11.0) {
                  return Text("November");
                } else if (value == 12.0) {
                  return Text("December");
                }else {
                  return Text("");
                }
              }
            }
          ),
        ),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );
}






