import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineGraph extends StatelessWidget {
  const LineGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LineChart(
        data,
      ),
    );
  }
}

const cutOffYValue = 2.0;

LineChartData get data => LineChartData(
      lineTouchData: lineTouchData1,
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (_) => FlLine(color: Colors.grey.shade200),
        horizontalInterval: 2,
      ),
      titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
              axisNameSize: 25,
              axisNameWidget: const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'sales in 2019',
                ),
              ),
              sideTitles: SideTitles(
                showTitles: false,
              )),
          leftTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  interval: 2,
                  reservedSize: 25,
                  getTitlesWidget: (_, __) {
                    return Text("${_.toInt()} M");
                  })),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))),
      borderData: FlBorderData(show: false),
      lineBarsData: lineBarsData1,
      minX: 0,
      maxX: 12,
      maxY: 4,
      minY: 0,
    );

LineTouchData get lineTouchData1 => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(tooltipBgColor: Colors.white10));

List<LineChartBarData> get lineBarsData1 => [
      lineChartBarData1_1,
    ];

LineChartBarData get lineChartBarData1_1 => LineChartBarData(
      isCurved: true,
      color: Colors.greenAccent,
      barWidth: 4,
      belowBarData: BarAreaData(
        show: true,
        color: Colors.greenAccent.withOpacity(0.1),
      ),
      curveSmoothness: .3,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: true,
        checkToShowDot: (spot, dt) => spot.x == 12,
      ),
      spots: const [
        FlSpot(1, 0.5),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
      ],
    );
