import 'package:etra/widgets/usescad-custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:etra/widgets/dashboard_piechart.dart';
import 'package:etra/widgets/fist_dashboad_Container.dart';
import 'package:etra/widgets/nav_bar.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with TickerProviderStateMixin {
  final List<Widget> _gridItems = [
    DashboardContainer(),
    Container(padding: EdgeInsets.all(16),
    child: Center(child: Text('No Data Available'),),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(20), // Curved corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 10, // Blur radius
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),),
    Container(padding: EdgeInsets.all(16),
    child: Center(child: Text('No Data Available'),),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(20), // Curved corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 10, // Blur radius
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),),
    HoverAnimationCardContainer(),
    // CircularProgressBarWithSyncfusion(progressValue: 40,),
  Container(padding: EdgeInsets.all(16),
    child: Center(child: Text('No Data Available'),),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(20), // Curved corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 10, // Blur radius
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),),

    MinimalistTabContainer(),
  ];

  List<AnimationController> _animationControllers = [];
  List<Animation<double>> _animations = [];

  @override
  void initState() {
    super.initState();

    // Initialize animation controllers and animations for each grid item
    for (int i = 0; i < _gridItems.length; i++) {
      AnimationController controller = AnimationController(
        duration: Duration(milliseconds: 500), // Duration of animation
        vsync: this,
      );

      _animationControllers.add(controller);

      _animations.add(
        Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.0, 1.0, curve: Curves.bounceInOut),
        )),
      );

      // Delay the animation for each grid item to create staggered effect
      Future.delayed(Duration(milliseconds: i * 200), () {
        controller.forward();
      });
    }
  }

  @override
  void dispose() {
    // Dispose all animation controllers
    for (var controller in _animationControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomNavbar(),
            SizedBox(height: 30),
            Flexible(
              child: GridView.custom(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 50),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 2, // Number of columns
                  mainAxisSpacing: 70, // Vertical spacing
                  crossAxisSpacing: 30, // Horizontal spacing
                  pattern: [
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 2),
                    QuiltedGridTile(1, 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) {
                    // Apply horizontal slide animation and fade animation
                    return FadeTransition(
                      opacity: _animations[index],
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: Offset(-1.0, 0.0), // Start from the left
                          end: Offset.zero, // End at its original position
                        ).animate(_animationControllers[index]),
                        child: _gridItems[index], // The widget for this index
                      ),
                    );
                  },
                  childCount: 6,
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class MinimalistTabContainer extends StatefulWidget {
  @override
  _MinimalistTabContainerState createState() => _MinimalistTabContainerState();
}

class _MinimalistTabContainerState extends State<MinimalistTabContainer> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Sample data for each tab
  List<Map<String, String>> frozenCars = [
    {'name': 'John Doe', 'id': '12345', 'reason': 'Frozen'},
    {'name': 'Jane Smith', 'id': '67890', 'reason': 'Frozen'},
    {'name': 'Michael White', 'id': '54321', 'reason': 'Frozen'},
    {'name': 'Sara Green', 'id': '98765', 'reason': 'Frozen'},
  ];

  List<Map<String, String>> blockedCars = [
    {'name': 'Michael Brown', 'id': '11223', 'reason': 'Blocked'},
    {'name': 'Emily Davis', 'id': '44556', 'reason': 'Blocked'},
    {'name': 'David Johnson', 'id': '78901', 'reason': 'Blocked'},
    {'name': 'Olivia Turner', 'id': '21345', 'reason': 'Blocked'},
  ];

  List<Map<String, String>> pausedCars = [
    {'name': 'David Johnson', 'id': '78901', 'reason': 'Paused'},
    {'name': 'Sarah Lee', 'id': '23456', 'reason': 'Paused'},
    {'name': 'Lucas King', 'id': '67890', 'reason': 'Paused'},
    {'name': 'Sophia Adams', 'id': '11111', 'reason': 'Paused'},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget buildCard(Map<String, String> car) {
    return Container(
     
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  car['name'] ?? '',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'ID: ${car['id'] ?? ''}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Reason: ${car['reason'] ?? ''}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            Icon(Icons.directions_car, color: Colors.blue), // Car icon
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(20), // Curved corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 10, // Blur radius
            offset: Offset(0, 4), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          // TabBar without underline
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent, // No underline
            labelColor: Colors.blue, // Active tab color
            unselectedLabelColor: Colors.grey, // Inactive tab color
            tabs: [
              Tab(text: 'Frozen'),
              Tab(text: 'Blocked'),
              Tab(text: 'Paused'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Tab 1: Frozen Cars
                ListView(
                  children: frozenCars.map((car) => buildCard(car)).toList(),
                ),
                // Tab 2: Blocked Cars
                ListView(
                  children: blockedCars.map((car) => buildCard(car)).toList(),
                ),
                // Tab 3: Paused Cars
                ListView(
                  children: pausedCars.map((car) => buildCard(car)).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
