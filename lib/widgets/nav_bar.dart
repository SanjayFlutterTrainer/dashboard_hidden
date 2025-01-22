import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.all(20),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [Icon(Icons.bus_alert_outlined), Text("ENTRI")],
          ),
          Text("Home"),
          Text("Registration"),
          Text("Cards"),
          Text("History"),
          Text("Profile"),
          Text("Reports"),
          Container(
            width: width / 3,
            decoration: BoxDecoration(
              color: Colors.white, // White background
              borderRadius: BorderRadius.circular(50), // Curved corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(0, 3), // Shadow position
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter text here",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                border: InputBorder.none, // Remove border
              ),
            ),
          ),
          Icon(Icons.settings),
          Icon(Icons.person_2_outlined),
        ],
      ),
    );
  }
}
