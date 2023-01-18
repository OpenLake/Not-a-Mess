import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:not_a_mess/services/route_constants.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/day/day_screen_widget.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/horizontal_bar_chart_creation/horizontal_bar_chart_creation.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/week_month_year_screens/week_month_year_screen_widget.dart';
import 'constants/colors.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final Map<String, Widget> ScreenRenderer = {
    "Day": DayScreen(),
    "Week": WeekMonthYearScreenGenerator(
      dataLineChart: [[3,4,2.3,5,4,3.4,2],[4,3,3.3,3.6,3,3.8,2.9],[5,2.6,4.3,3.2,3.5,3.7,4],[2.5,5,3.3,5,3,3.8,2.9]],
        title: "Week",
        dataForHorizontalBar: [
      FoodData("Uttapam", 4.3),
      FoodData("Sambhar", 4.2),
      FoodData("Nariyal Chutney", 4.1),
      FoodData("Uttapam2", 4.3),
      FoodData("Sambhar2", 4.2),
      FoodData("Nariyal Chutney2", 4.1),
      FoodData("Uttapam3", 4.3),
      FoodData("Sambhar3", 4.2),
      FoodData("Nariyal Chutney3", 4.1),
      FoodData("Uttapam4", 4.3),
      FoodData("Sambhar4", 4.2),
      FoodData("Nariyal Chutney4", 4.1),
    ]),
    "Month":
        WeekMonthYearScreenGenerator(
          dataLineChart: [[1,2,4,3], [4,3,1,2], [3,3,2,4], [3,5,2,1]],
            title: "Month", dataForHorizontalBar: [
      FoodData("Uttapam", 3.3),
      FoodData("Sambhar", 3.2),
      FoodData("Nariyal Chutney", 3.1),
      FoodData("Uttapam2", 4.3),
      FoodData("Sambhar2", 4.2),
      FoodData("Nariyal Chutney2", 4.1),
      FoodData("Uttapam3", 3.3),
      FoodData("Sambhar3", 4.2),
      FoodData("Nariyal Chutney3", 4.1),
      FoodData("Uttapam4", 4.3),
      FoodData("Sambhar4", 3.2),
      FoodData("Nariyal Chutney4", 4.1),
    ]),
    "Year": WeekMonthYearScreenGenerator(
      dataLineChart: [[1,1,1,1,1,1,1,1,1,1,1,1], [2,2,2,2,2,2,2,2,2,2,2,2], [3,3,3,3,3,3,3,3,3,3,3.3], [4,4,4,4,4,4,4,4,4,4,4,4]],
        title: "Year", dataForHorizontalBar: [
      FoodData("Uttapam", 3.3),
      FoodData("Sambhar", 4.2),
      FoodData("Nariyal Chutney", 3.1),
      FoodData("Uttapam2", 4.3),
      FoodData("Sambhar2", 4.2),
      FoodData("Nariyal Chutney2", 4.1),
      FoodData("Uttapam3", 3.3),
      FoodData("Sambhar3", 4.2),
      FoodData("Nariyal Chutney3", 4.1),
      FoodData("Uttapam4", 4.3),
      FoodData("Sambhar4", 3.2),
      FoodData("Nariyal Chutney4", 4.1),
    ]),
  };

  String returnedElement = "Day";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: IconButton(
              onPressed: () { context.pushNamed(RouteConstants.issues);}, icon: Icon(Icons.edit_note, size: 30,),
            ),
          ),
        ],
        title: Text(
          "Dashboard",
          style: TextStyle(color: primaryColor, fontSize: 40),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Wrap(
                spacing: 8,
                children: [
                  ActionChip(
                      backgroundColor: backgroundColor,
                      autofocus: true,
                      shape: const StadiumBorder(
                          side: BorderSide(color: Colors.white)),
                      label: Text(
                        "Day",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      onPressed: () {
                        setState(() {
                          returnedElement = "Day";
                        });
                      }),
                  ActionChip(
                      backgroundColor: backgroundColor,
                      autofocus: true,
                      shape: const StadiumBorder(
                          side: BorderSide(color: Colors.white)),
                      label: Text(
                        "Week",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      onPressed: () {
                        setState(() {
                          returnedElement = "Week";
                        });
                      }),
                  ActionChip(
                      backgroundColor: backgroundColor,
                      autofocus: true,
                      shape: const StadiumBorder(
                          side: BorderSide(color: Colors.white)),
                      label: Text(
                        "Month",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      onPressed: () {
                        setState(() {
                          returnedElement = "Month";
                        });
                      }),
                  ActionChip(
                      backgroundColor: backgroundColor,
                      autofocus: true,
                      shape: const StadiumBorder(
                          side: BorderSide(color: Colors.white)),
                      label: Text(
                        "Year",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      onPressed: () {
                        setState(() {
                          returnedElement = "Year";
                        });
                      }),
                ],
              ),
              Container(child: ScreenRenderer[returnedElement]),
            ],
          ),
        ),
      ),
    );
  }
}
