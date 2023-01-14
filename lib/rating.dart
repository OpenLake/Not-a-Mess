import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_a_mess/widgets/choice_chip_buider.dart';
import 'package:not_a_mess/widgets/star_rating.dart';
import 'package:go_router/go_router.dart';
import 'constants/colors.dart';

class Ratings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: BackButton(onPressed: (){context.pushReplacement("/menu");}),
        title: Text("Ratings"),
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              child: Text(
                "NARIYAL CHUTNEY",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.16 * (MediaQuery.of(context).size.width)),
              child: Rating(),
            ),
            SizedBox(
              height: 50,
            ),
            Wrap(spacing: 8, children: <Widget>[
              ChoiceChipBuild("undercooked"),
              ChoiceChipBuild("too oily"),
              ChoiceChipBuild("too spicy"),
              ChoiceChipBuild("overcooked"),
              ChoiceChipBuild("needs more salt"),
              ChoiceChipBuild("stale")
            ]),
          ],
        ),
      ),
    );
  }
}
