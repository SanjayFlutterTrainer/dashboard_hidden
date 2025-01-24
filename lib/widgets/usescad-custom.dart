import 'package:flutter/material.dart';

class HoverAnimationCardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Set the height of the container
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(20), // Curved corners
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // First Card: Total Users
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent, // No background color
                borderRadius: BorderRadius.circular(12),
            
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Total Users',
                    style: TextStyle(
                      fontSize: 12, // Reduced font size
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '1500', // Example value for Total Users
                    style: TextStyle(
                      fontSize: 16, // Reduced font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider()),
          // Second Card: Users Online
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent, // No background color
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
              
                ],
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Users Online',
                    style: TextStyle(
                      fontSize: 12, // Reduced font size
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '300', // Example value for Users Online
                    style: TextStyle(
                      fontSize: 16, // Reduced font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider()),
          // Third Card: Users Registered
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent, // No background color
                borderRadius: BorderRadius.circular(12),
          
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Users Registered',
                    style: TextStyle(
                      fontSize: 12, // Reduced font size
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '1200', // Example value for Users Registered
                    style: TextStyle(
                      fontSize: 16, // Reduced font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
