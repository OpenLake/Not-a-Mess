import 'package:flutter/material.dart';
import 'package:not_a_mess/widgets/chip_builder.dart';
import 'constants/colors.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xffFF6868),
        title: Center(child: Text("Today's Menu")),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: <Widget>[
            Text("Breakfast",
                style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
            Wrap(spacing: 3, children: <Widget>[
              ChipBuild("UTTAPAM"),
              ChipBuild("SAMBHAR"),
              ChipBuild("NARIYAL CHUTNEY")
            ]),
            SizedBox(height: 20,),
            Text("Lunch",
                style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
            Wrap(spacing: 3, children: <Widget>[
              ChipBuild("DAL"),
              ChipBuild("RICE"),
              ChipBuild("SALAD"),
              ChipBuild("ROTI"),
              ChipBuild("MIXED VEG"),
            ]),
            SizedBox(height: 20,),
            Text("Snacks",
                style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
            Wrap(spacing: 3, children: <Widget>[
              ChipBuild("BREAD PAKORA"),
              ChipBuild("COFFEE"),
            ]),
            SizedBox(height: 20,),
            Text("Dinner",
                style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
            Wrap(spacing: 3, children: <Widget>[
              ChipBuild("RAJMA"),
              ChipBuild("RICE"),
              ChipBuild("ROTI"),
              ChipBuild("FRUIT CREAM"),
            ]),
          ],
        ),
      ),
    );
  }
}
