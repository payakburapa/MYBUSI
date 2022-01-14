//กราฟ pie_chart แสดงข้อมูลเกี่ยวกับ ราคากำไร,ราคาขาย,ราคาทุน

import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

enum LegendShape { Circle, Rectangle }

class ReportPie extends StatefulWidget {
  @override
  _Pie createState() => _Pie();
}

class _Pie extends State<ReportPie> {
  Map<String, double> dataMap = {
    "ขาย": 5,
    "ทุน": 3,
    "กำไร": 2,
  };
  List<Color> colorList = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  ChartType _chartType = ChartType.disc;
  //bool _showCenterText = false;
  // double _ringStrokeWidth = 35;
  // double _chartLegendSpacing = 35;

  bool _showLegendsInRow = false;
  bool _showLegends = true;

  bool _showChartValueBackground = true;
  bool _showChartValues = true;
  bool _showChartValuesInPercentage = true;
  bool _showChartValuesOutside = false;

  LegendShape _legendShape = LegendShape.Circle;

  int key = 0;

  @override
  Widget build(BuildContext context) {
    final chart = PieChart(
      key: ValueKey(key),
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 500),
      // chartLegendSpacing: _chartLegendSpacing,
      chartRadius: 200,
      // chartRadius: MediaQuery.of(context).size.width / 3.2 > 1000
      //      ? 1000 : MediaQuery.of(context).size.width / 3.2,
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: _chartType,
      //centerText: _showCenterText ? "HYBRID" : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        //legendPosition: _legendPosition,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.Circle
        ?BoxShape.circle : BoxShape.rectangle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      // ringStrokeWidth: _ringStrokeWidth,
      emptyColor: Colors.grey,
    );
    return chart;
  }
}
