import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieGraph extends StatelessWidget {
  const PieGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PieChart(data),
    );
  }
}

PieChartData get data => PieChartData(
      sections: [
        PieChartSectionData(
            value: 20, color: Colors.greenAccent, showTitle: false),
        PieChartSectionData(
            value: 40, color: Colors.redAccent, showTitle: false),
        PieChartSectionData(
            value: 60, color: Colors.indigoAccent, showTitle: false),
        PieChartSectionData(
            value: 20, color: Colors.amberAccent, showTitle: false)
      ],
    );
