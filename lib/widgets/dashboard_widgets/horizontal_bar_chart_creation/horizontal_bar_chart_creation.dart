import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_a_mess/constants/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class HorizontalBarChart extends StatefulWidget {
  final double? heightOfChart;
  final List<FoodData> foodNameAndRating;
  const HorizontalBarChart(this.foodNameAndRating, {super.key, this.heightOfChart});

  @override
  State<HorizontalBarChart> createState() => _HorizontalBarChartState();
}

class _HorizontalBarChartState extends State<HorizontalBarChart> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightOfChart ?? 600,
      width: MediaQuery.of(context).size.width,
      child: SfCartesianChart(
        title: ChartTitle(
            text: "Aggregate Ratings",
            textStyle: TextStyle(color: Colors.white)),
        series: <ChartSeries>[
          BarSeries<FoodData, String>(
            color: primaryColor,
            dataLabelSettings: DataLabelSettings(angle: 90, isVisible: true),
              dataSource: widget.foodNameAndRating,
              xValueMapper: (FoodData food, _) => food.food,
              yValueMapper: (FoodData food, _) => food.rating,
          ),
        ],
        primaryXAxis: CategoryAxis(
          title: AxisTitle(text: "Food Items"),
        ),
        primaryYAxis: NumericAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          title: AxisTitle(text: "Ratings"),
        ),

      ),
    );
  }
}


// Class to handle the plotting coordinates and labels.
class FoodData {
  final String food;
  final double rating;

  FoodData(this.food, this.rating);
}
