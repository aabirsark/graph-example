import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraph extends StatelessWidget {
  const BarGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BarChart(
        data,
      ),
    );
  }
}

BarChartData get data => BarChartData(
        barGroups: [
          barData(12),
          barData(15),
          barData(9),
          barData(15),
          barData(10),
          barData(10),
          barData(16),
          barData(19),
          barData(16),
          barData(15),
          barData(19),
          barData(12),
          barData(9),
        ],
        maxY: 20,
        gridData: FlGridData(
          show: false,
        ),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
                axisNameSize: 25,
                axisNameWidget: const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'sales in 2020',
                  ),
                ),
                sideTitles: SideTitles(
                  showTitles: false,
                )),
            leftTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: false,
            )),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))),
        alignment: BarChartAlignment.spaceAround);

BarChartGroupData barData(int val) => BarChartGroupData(x: 1, barRods: [
      BarChartRodData(toY: val.toDouble(), color: Colors.greenAccent),
    ]);
