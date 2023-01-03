import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:not_a_mess/constants/colors.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/bar_data.dart';

class BarChartWidget extends StatelessWidget {
  final double barWidth = 20.0;

  @override
  Widget build(BuildContext context) =>
      BarChart(
          BarChartData(
              alignment: BarChartAlignment.center,
              maxY: 5,
              minY: 0,
              groupsSpace: 10,
              barTouchData: BarTouchData(enabled: true),

              // barGroups: [
              //   BarChartGroupData(
              //       x: 0,
              //     barRods: [
              //       BarChartRodData(
              //         toY: 5,
              //         width: 10,
              //         borderRadius: BorderRadius.circular(10),
              //         color: primaryColor,
              //       ),
              //     ]
              //   )
              // ]
              barGroups: BarData.barData
                  .map(
                      (data) => BarChartGroupData(
                          x: data.id,
                          barRods: [
                            BarChartRodData(
                              toY: data.y,
                              width: barWidth,
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ],
                      )
              ).toList()
          )
      );
}
