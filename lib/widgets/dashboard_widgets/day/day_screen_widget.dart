import 'package:accordion/accordion.dart';
import 'package:accordion/accordion_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../star_rating.dart';
import '../bar_data.dart';
import '../main_bar_chart.dart';
import '../pie_chart_creation/pie_chart.dart';

class DayScreen extends StatelessWidget {
  // const DayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 0.137 * (MediaQuery.of(context).size.width)),
          child: Rating(),
        ),
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: MainBarChartWidget(data: BarData.barData),
        ),
        SizedBox(
          height: 15,
        ),
        Accordion(
          disableScrolling: true,
          maxOpenSections: 4,
          headerBackgroundColor: backgroundColor,
          headerBackgroundColorOpened: primaryColor,
          contentBackgroundColor: backgroundColor,
          leftIcon: Icon(Icons.food_bank, color: Colors.white),
          children: [
            AccordionSection(
              isOpen: false,
              header: Text('Breakfast',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              content: Column(
                children: [
                  PieChartGenerator("Uttapam", [1, 10, 2, 14, 25, 6]),
                  PieChartGenerator("Sambhar", [1, 10, 2, 14, 25, 6]),
                  PieChartGenerator("Nariyal Chutney", [1, 0, 2, 0, 25, 6])
                ],
              ),
            ),
            AccordionSection(
              isOpen: false,
              header: Text('Lunch',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              content: Column(
                children: [
                  PieChartGenerator("Uttapam", [1, 10, 2, 14, 25, 6]),
                  PieChartGenerator("Sambhar", [1, 0, 2, 14, 2, 6]),
                  PieChartGenerator("Nariyal Chutney", [1, 0, 2, 0, 25, 6])
                ],
              ),
            ),
            AccordionSection(
              isOpen: false,
              header: Text('Snacks',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              content:Column(
                children: [
                  PieChartGenerator("Uttapam", [1, 10, 2, 14, 25, 6]),
                  PieChartGenerator("Sambhar", [1, 15, 2, 14, 0, 6]),
                  PieChartGenerator("Nariyal Chutney", [1, 0, 7, 0, 25, 6]),
                ],
              ),
            ),
            AccordionSection(
              isOpen: false,
              header: Text('Dinner',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              content:Column(
                children: [
                  PieChartGenerator("Uttapam", [1, 10, 2, 14, 25, 6]),
                  PieChartGenerator("Sambhar", [1, 10, 2, 14, 25, 6]),
                  PieChartGenerator("Nariyal Chutney", [1, 0, 2, 0, 25, 6])
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
