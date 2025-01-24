import 'package:etra/widgets/cad_containe.dart';
import 'package:flutter/material.dart';
import 'package:etra/widgets/firstContaine.dart';
import 'package:etra/widgets/nav_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    // Define breakpoints for responsiveness
    bool isMobile = width < 600;
    bool isTablet = width >= 600 && width < 1024;

    return Scaffold(
      body: Column(
        children: [
          const CustomNavbar(), // Responsive Navbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Left Section
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const FirstContainer(), // Your custom widget
                      SizedBox(
                        height: isMobile
                            ? height / 5
                            : height / 3, // Reduce height for mobile view
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              // Use Expanded for equal width distribution
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text(
                                        'Container 1'), // Sample text
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text(
                                        'Container 2'), // Sample text
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              // Use Expanded for equal width distribution
                              child: Container(
                                margin: EdgeInsets.all(20),
                                width: double
                                    .infinity, // Takes up the full width of the parent
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: const Text('Container 3'), // Sample text
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Right Section (Visible only on tablets and desktops)
                if (!isMobile) ...[
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    CardContainer(),

                        const SizedBox(height: 20),
                        Container(
                          height: isTablet ? height / 4 : height / 3.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
