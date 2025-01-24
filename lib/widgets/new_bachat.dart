import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyRevenueChart extends StatelessWidget {
  final List<double> revenueData;

  WeeklyRevenueChart({required this.revenueData});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40, // Reserve space for bottom titles
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0: return Text('Mon');
                  case 1: return Text('Tue');
                  case 2: return Text('Wed');
                  case 3: return Text('Thu');
                  case 4: return Text('Fri');
                  case 5: return Text('Sat');
                  case 6: return Text('Sun');
                  default: return Text('');
                }
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40, // Reserve space for left titles
              getTitlesWidget: (value, meta) {
                return Text(value.toString());
              },
            ),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false), // Hide top titles
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false), // Hide right titles
          ),
        ),
        borderData: FlBorderData(show: true),
        barGroups: List.generate(revenueData.length, (index) {
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: revenueData[index],
                color: Colors.blue,
                width: 20, // Width of the bars
              ),
            ],
          );
        }),
        gridData: FlGridData(show: true), // Show grid lines
      ),
    );
  }
}