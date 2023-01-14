import 'package:accordion/accordion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_a_mess/widgets/chip_builder.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/bar_data.dart';
import 'package:not_a_mess/widgets/dashboard_widgets/main_bar_chart.dart';
import 'package:not_a_mess/widgets/star_rating.dart';
import 'constants/colors.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChipBuild("Day", '/', fontsize: 15),
                  ChipBuild("Week", '/', fontsize: 15),
                  ChipBuild("Month", '/', fontsize: 15),
                  ChipBuild("Year", '/', fontsize: 15),
                ],
              ),
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
                    isOpen: true,
                    header: Text('Breakfast',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    content: Text('This is the introduction right here ...'),
                  ),
                  AccordionSection(
                    isOpen: true,
                    header: Text('Lunch',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    content: Icon(Icons.airline_seat_flat,
                        size: 120, color: Colors.blue[200]),
                  ),
                  AccordionSection(
                    isOpen: true,
                    header: Text('Snacks',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    content:
                        Icon(Icons.airplay, size: 70, color: Colors.green[200]),
                  ),
                  AccordionSection(
                    isOpen: true,
                    header: Text('Tea',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    content:
                        Icon(Icons.airplay, size: 70, color: Colors.green[200]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
