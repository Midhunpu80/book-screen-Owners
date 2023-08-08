import 'package:flutter/material.dart';

import 'package:owner/utils/colors/colors.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sizer/sizer.dart';

Widget piecha() {
  // final sta = Get.put(status_service());
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 35.h,
        width: 100.w,
        color: wh,
        child: PieChart(
          ringStrokeWidth: 2.h,
          // ignore: prefer_const_literals_to_create_immutables
          dataMap: {
            "Booked": 110,
            "cancelled": 120,
          },
          chartType: ChartType.ring,
          colorList: [gr, re],
        ),
      ),
    ),
  );
}
