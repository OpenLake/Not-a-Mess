import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:not_a_mess/constants/colors.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/bar_data.dart';
import 'data.dart';

class MainBarChartWidget extends StatelessWidget {
  final double barWidth = 20.0;
  final List<Data> data;
  const MainBarChartWidget({Key? key, required this.data}) : super(key: key);
  AxisTitles getTopBottomTitles() => AxisTitles(
      sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: (id, meta) => Text(data.firstWhere((element) => element.id == id.toInt()).name, style: TextStyle(color: Colors.white),)
      )
  );
  @override
  Widget build(BuildContext context) =>
      BarChart(
          BarChartData(
              alignment: BarChartAlignment.center,
              maxY: 5,
              minY: 0,
              groupsSpace: 40,
              barTouchData: BarTouchData(enabled: true),
              titlesData: FlTitlesData(
                bottomTitles: getTopBottomTitles(),
                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              barGroups: BarData.barData
                  .map(
                      (data) => BarChartGroupData(
                          x: data.id,
                          barRods: [
                            BarChartRodData(
                              toY: data.y,
                              width: barWidth,
                              color: primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )
                            ),
                          ],
                      )
              ).toList()
          )
      );
}
