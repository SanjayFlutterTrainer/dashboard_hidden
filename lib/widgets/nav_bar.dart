import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildNavbarItems(BuildContext context) {
      return [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const Text(
            "Home",
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/registration');
          },
          child: const Text(
            "Registration",
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cards');
          },
          child: const Text(
            "Cards",
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/history');
          },
          child: const Text(
            "History",
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: const Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/reports');
          },
          child: const Text(
            "Reports",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ];
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        // Decide how to arrange widgets based on width
        bool isMobile = width < 600; // Define a breakpoint for mobile screens

        return Container(
          padding: const EdgeInsets.all(20),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.bus_alert_outlined),
                            SizedBox(width: 8),
                            Text(
                              "ENTRI",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            // Add functionality for a menu drawer or popup menu
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter text here",
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.bus_alert_outlined),
                        SizedBox(width: 8),
                        Text(
                          "ENTRI",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ..._buildNavbarItems(context), // Unpack the list here
                    Container(
                      width: width / 3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter text here",
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Icon(Icons.settings),
                    const Icon(Icons.person_2_outlined),
                  ],
                ),
        );
      },
    );
  }
}
