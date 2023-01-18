import 'package:flutter/material.dart';
import 'package:not_a_mess/services/route_constants.dart';
import 'package:not_a_mess/widgets/chip_builder.dart';
import 'constants/colors.dart';
import 'package:go_router/go_router.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xffFF6868),
        title:  Text("Today's Menu"),
      actions: [
        IconButton(onPressed: (){context.pushNamed(RouteConstants.issues);}, icon: Icon(Icons.edit_note_sharp))
      ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: <Widget>[
              Text("Breakfast",
                  style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
              Wrap(spacing: 3, children: <Widget>[
                ChipBuild("UTTAPAM", '/rating'),
                ChipBuild("SAMBHAR", '/rating'),
                ChipBuild("NARIYAL CHUTNEY", '/rating')
              ]),
              SizedBox(height: 20,),
              Text("Lunch",
                  style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
              Wrap(spacing: 3, children: <Widget>[
                ChipBuild("DAL", '/rating'),
                ChipBuild("RICE", '/rating'),
                ChipBuild("SALAD", '/rating'),
                ChipBuild("ROTI", '/rating'),
                ChipBuild("MIXED VEG", '/rating'),
              ]),
              SizedBox(height: 20,),
              Text("Snacks",
                  style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
              Wrap(spacing: 3, children: <Widget>[
                ChipBuild("BREAD PAKORA", '/rating'),
                ChipBuild("COFFEE", '/rating'),
              ]),
              SizedBox(height: 20,),
              Text("Dinner",
                  style: TextStyle(fontSize: 25, color: Color(0xffFF6868))),
              Wrap(spacing: 3, children: <Widget>[
                ChipBuild("RAJMA", '/rating'),
                ChipBuild("RICE", '/rating'),
                ChipBuild("ROTI", '/rating'),
                ChipBuild("FRUIT CREAM", '/rating'),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
