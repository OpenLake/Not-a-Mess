import 'package:fl_chart/fl_chart.dart';
import 'package:collection/collection.dart';
import 'package:not_a_mess/constants/colors.dart';

class PieDataHandler{
  final List<int> data;
  PieDataHandler({required this.data});

  List<PieChartSectionData> listOfPiechartData(){
    List<PieChartSectionData> c = [];
    for (int i = 0; i<data.length; i++){
      c.add(PieChartSectionData(
        title: data.elementAt(i).toString(),
        value: double.parse(data.elementAt(i).toString()),
        color: [primaryColor, primaryColor2, primaryColor3, primaryColor4, primaryColor5, primaryColor6].elementAt(i),
        radius: 100,
      ));
    };
    return c;
  }

}