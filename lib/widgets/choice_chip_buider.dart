import 'package:flutter/material.dart';
import 'package:not_a_mess/constants/colors.dart';


class ChoiceChipBuild extends StatefulWidget {
  final String label;
  final Color? color;
  const ChoiceChipBuild(this.label, {super.key, this.color});

  @override
  State<ChoiceChipBuild> createState() => _ChoiceChipBuildState();
}

class _ChoiceChipBuildState extends State<ChoiceChipBuild> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: const EdgeInsets.all(8),
      label: Text(widget.label, style: TextStyle(color: Colors.white, fontSize: 17),),
      backgroundColor: backgroundColor,
      shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
      selectedColor: widget.color??primaryColor,
      selected: _isSelected,
      onSelected: (newBoolValue){
        setState((){
          _isSelected = newBoolValue;
        });
      }
    );
  }
}