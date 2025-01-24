// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// class BarChartSample extends StatefulWidget {
//   @override
//   _BarChartSampleState createState() => _BarChartSampleState();
// }

// class _BarChartSampleState extends State<BarChartSample> {
//   List<BarChartGroupData> barGroups = [];

//   @override
//   void initState() {
//     super.initState();
//     // Initial data
//     barGroups = _getBarGroups([5, 3, 4, 2, 6,4,]);
//   }

//   List<BarChartGroupData> _getBarGroups(List<double> values) {
//     return List.generate(values.length, (index) {
//       return BarChartGroupData(
//         x: index,
//         barRods: [
//           BarChartRodData(
//             y: values[index], // Use 'toY' instead of 'y'
//             width: 30,
//           ),
//         ],
//       );
//     });
//   }

//   Color _getColor(int index) {
//     switch (index) {
//       case 0:
//         return Colors.blue;
//       case 1:
//         return Colors.red;
//       case 2:
//         return Colors.green;
//       case 3:
//         return Colors.orange;
//       case 4:
//         return Colors.purple;
//       default:
//         return Colors.black;
//     }
//   }

//   void _updateData() {
//     // Update the data with new values
//     setState(() {
//       barGroups = _getBarGroups([6, 2, 5, 3, 4,6,8]); // New values
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: MediaQuery.sizeOf(context).width/5,
//       // padding: const EdgeInsets.all(36.0),
//       child: BarChart(
//         BarChartData(
//           alignment: BarChartAlignment.spaceAround,
//           maxY: 10, // Set the maximum Y value
//           barTouchData: BarTouchData(
//             touchTooltipData: BarTouchTooltipData(
//               tooltipBgColor: const Color.fromARGB(191, 64, 68, 75),
//             ),
//           ),
//           titlesData: FlTitlesData(
//             topTitles: SideTitles(showTitles: false),
//             leftTitles: SideTitles(showTitles: false), // Hide left titles
//             rightTitles: SideTitles(showTitles: false), // Hide bottom titles
//           ),
//           borderData: FlBorderData(show: false), // Hide borders
//           gridData: FlGridData(show: false), // Hide grid lines
//           barGroups: barGroups,
//         ),
//       ),
//     );
//   }
// }