import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class ReportBar extends StatefulWidget {
  ReportBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GraphBar createState() => _GraphBar();
}

class _GraphBar extends State<ReportBar> {
  List<GDPData> _chartData;
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SfCartesianChart(
            title: ChartTitle(text: 'ข้อมูลสินค้า'),
            legend: Legend(isVisible: false),
            tooltipBehavior: _tooltipBehavior,
            series: <ChartSeries>[
              BarSeries<GDPData, String>(
                  name: 'สินค้า',
                  dataSource: _chartData,
                  xValueMapper: (GDPData gdp, _) => gdp.continent,
                  yValueMapper: (GDPData gdp, _) => gdp.gdp,
                  dataLabelSettings: DataLabelSettings(isVisible: true), enableTooltip: true)
            ],
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(
                //edgeLabelPlacement: EdgeLabelPlacement.shift,
                //numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
                edgeLabelPlacement: EdgeLabelPlacement.shift,
                numberFormat: NumberFormat.percentPattern(),
                //numberFormat: NumberFormat.percentPattern(),
                //title: AxisTitle(text: 'GDP in billions of U.S. Dollars')
            ),
        )
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('ยาเหลือง', 0.40),
      GDPData('สเปร์', 0.39),
      GDPData('ยาแก้ไอ', 0.50),
      GDPData('Hair wax', 0.90),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final double gdp;
}