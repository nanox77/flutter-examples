import 'dart:math';

import 'package:line_chart/model/line-chart.model.dart';

List<LineChartModel> randomData({int limit = 10}) {
  List<LineChartModel> results = [];
  for (var i = 0; i < limit; i++) {
    final random = Random();
    var line =
        LineChartModel(amount: random.nextDouble() * limit * 100, date: DateTime.now().subtract(Duration(days: i)));
    results.add(line);
  }
  return results;
}
