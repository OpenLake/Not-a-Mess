import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/pie_chart_creation/pie_data_handler.dart';

import '../../../constants/colors.dart';
import '../indicator.dart';

class PieChartGenerator extends StatelessWidget {
  final String foodName;
  final List<int> data;
  const PieChartGenerator(this.foodName, this.data);

@override
Widget build(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 40,),
      Text("$foodName tags", style: TextStyle(color: Colors.white, fontSize: 25),),
      SizedBox(height: 20,),
      Indicator(
        color: primaryColor,
        text: 'Undercooked',
        isSquare: true,
      ),
      Indicator(
        color: primaryColor2,
        text: 'Too Oily',
        isSquare: true,
      ),
      Indicator(
        color: primaryColor3,
        text: 'Too Spicy',
        isSquare: true,
      ),
      Indicator(
        color: primaryColor4,
        text: 'Overcooked',
        isSquare: true,
      ),
      Indicator(
        color: primaryColor5,
        text: 'Needs more Salt',
        isSquare: true,
      ),
      Indicator(
        color: primaryColor6,
        text: 'Stale',
        isSquare: true,
      ),
      Container(height:250, child:PieChart(
        PieChartData(
          sections: PieDataHandler(
            data: data,
          ).listOfPiechartData(),
          centerSpaceRadius: 0,
          sectionsSpace: 1,
        ),
      )
      ),
    ],
  );
}
}
