// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// class CircularProgressBarWithSyncfusion extends StatelessWidget {
//   final double progressValue; // Pass the progress percentage as a value

//   CircularProgressBarWithSyncfusion({required this.progressValue});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200, // Width of the gauge
//       height: 200, // Height of the gauge
//       decoration: BoxDecoration(
//         color: Colors.white, // Background color
//         borderRadius: BorderRadius.circular(20), // Rounded corners
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1), // Shadow color
//             blurRadius: 10, // Blur radius
//             spreadRadius: 2, // Spread radius
//             offset: Offset(0, 4), // Shadow offset
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SfRadialGauge(
//           axes: <RadialAxis>[
//             RadialAxis(
//               startAngle: 0,
//               endAngle: 360,
//               showLabels: false, // Disable labels
//               showTicks: false, // Disable ticks
//               axisLineStyle: AxisLineStyle(
//                 thickness: 0.15, // Thickness of the background circle
//                 thicknessUnit: GaugeSizeUnit.factor, // Use a factor for thickness
//                 color: Colors.grey[300], // Background color of the circle
//               ),
//               pointers: <GaugePointer>[
//                 RangePointer(
//                   value: progressValue,
//                   width: 0.15, // Thickness of the progress bar
//                   sizeUnit: GaugeSizeUnit.factor, // Use a factor for thickness
//                   color: Colors.blue, // Progress bar color
//                   cornerStyle: CornerStyle.bothCurve, // Rounded edges
//                 ),
//               ],
//               annotations: <GaugeAnnotation>[
//                 GaugeAnnotation(
//                   widget: Text(
//                     '${progressValue.toInt()}%', // Display percentage
//                     style: TextStyle(
//                       fontSize: 24, // Font size
//                       fontWeight: FontWeight.bold, // Bold font
//                       color: Colors.black, // Text color
//                     ),
//                   ),
//                   positionFactor: 0.1, // Position of the text
//                   angle: 0, // Angle of the text
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
