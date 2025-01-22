import 'package:etra/widgets/custom_bargraph.dart';
import 'package:etra/widgets/nav_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    final barGroups = [
      BarChartGroupData(
        x: 0,
        barRods: [BarChartRodData(toY: 8, color: Colors.blue)],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [BarChartRodData(toY: 12, color: Colors.green)],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [BarChartRodData(toY: 10, color: Colors.orange)],
      ),
    ];

    final bottomTitles = ['Mon', 'Tue', 'Wed'];

    return Scaffold(
      body: Column(
        children: [
          CustomNavbar(),
          Container(
            padding: EdgeInsets.all(20),
            height: height / 1.5,
            width: width / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: CustomBarChart(
              barGroups: barGroups,
              bottomTitles: bottomTitles,
              chartTitle: 'Weekly Data',
            ),
          )
        ],
      ),
    );
  }
}
