import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    // Define breakpoints for responsiveness
    bool isMobile = width < 600;
    bool isTablet = width >= 600 && width < 1024;

    return Container(
      height: isTablet ? height / 2.5 : height / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 4), // Shadow below the container
          ),
        ],
      ),
      child: DefaultTabController(
        length: 3, // 3 Tabs
        child: Column(
          children: [
            // Modern TabBar without underline and divider
            TabBar(
              labelColor: Colors.blueAccent, // Active tab color
              unselectedLabelColor: Colors.grey, // Inactive tab color
              indicator: BoxDecoration(
                color: Colors.transparent, // No underline
              ),
              indicatorSize: TabBarIndicatorSize.label, // For visual separation
              labelPadding: EdgeInsets.zero, // Remove extra padding around labels
              overlayColor:
                  MaterialStateProperty.all(Colors.transparent), // Remove overlay
              tabs: const [
                Tab(text: 'Active Cards'),
                Tab(text: 'Blocked Cards'),
                Tab(text: 'Frozen Cards'),
              ],
            ),
            // Remove divider between TabBar and TabBarView
            Expanded(
              child: Padding(
                padding: EdgeInsets.zero, // Remove all padding
                child: TabBarView(
                  children: [
                    Center(
                      child: Text(
                        'Content for Tab 1',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Content for Tab 2',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Content for Tab 3',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}