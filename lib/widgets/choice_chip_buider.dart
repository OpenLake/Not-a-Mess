import 'package:flutter/material.dart';
import 'package:not_a_mess/constants/colors.dart';


class ChoiceChipBuild extends StatefulWidget {
  final String comment;

  ChoiceChipBuild(this.comment);

  @override
  State<ChoiceChipBuild> createState() => _ChoiceChipBuildState();
}

class _ChoiceChipBuildState extends State<ChoiceChipBuild> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: EdgeInsets.all(8),
      label: Text(this.widget.comment, style: TextStyle(color: Colors.white, fontSize: 17),),
      backgroundColor: backgroundColor,
      shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
      selectedColor: primaryColor,
      selected: _isSelected,
      onSelected: (newBoolValue){
        setState((){
          _isSelected = newBoolValue;
        });
      }
    );
  }
}