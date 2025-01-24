// import 'package:etra/widgets/bargraph.dart';
// import 'package:flutter/material.dart';

// class FirstContainer extends StatelessWidget {
//   const FirstContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     // Define responsive text sizes
//     double textSize = width / 50; // For "Today" text size
//     double numberSize = width / 30; // For number "300" text size

//     return Container(
//       height: height / 2, // More responsive height
//       width: width / 3, // 90% of the screen width
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           BarChartSample(),
//           SizedBox(width: 10), // Space between chart and text columns
//           Flexible(
//             flex: 3,
//             child: SingleChildScrollView( // Wrap in SingleChildScrollView
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // First column (Today)
//                   Text(
//                     "Revenue",
//                     style: TextStyle(
//                       fontSize: textSize,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "300",
//                     style: TextStyle(
//                       fontSize: numberSize,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   // Second column (Today)
//                   Text(
//                     "Recharges",
//                     style: TextStyle(
//                       fontSize: textSize,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "300",
//                     style: TextStyle(
//                       fontSize: numberSize,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }