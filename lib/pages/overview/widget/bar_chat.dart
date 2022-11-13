import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constant/style.dart';

class SimpleBarChart extends StatelessWidget {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  Widget build(BuildContext context) {
    data = [
      _ChartData('Today', 55),
      _ChartData('Yesterday', 25),
      _ChartData('2 days', 100),
      _ChartData('24 Jun', 75),
      _ChartData('23 Jun', 85),
      _ChartData('21 Jun', 45)
    ];
    _tooltip = TooltipBehavior(enable: true);
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
        tooltipBehavior: _tooltip,
        isTransposed: true,
        enableAxisAnimation:true,
        series: <ChartSeries<_ChartData, String>>[
          BarSeries<_ChartData, String>(
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
              name: 'Gold',
              color: Color.fromRGBO(8, 142, 255, 1))
        ]);
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
