import 'package:flutter/material.dart';
import 'package:fur_ever_homes/widgets/drawer.dart';
import 'package:fur_ever_homes/widgets/main_appbar.dart';

class HomeScreenContainer extends StatefulWidget {
  @override
  _HomeScreenContainerState createState() => _HomeScreenContainerState();
}

class _HomeScreenContainerState extends State<HomeScreenContainer>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Home Screen'),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.green,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Place Bid',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Buy Now',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget 
                  Center(
                    child: Text(
                      'Place Bid',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  // second tab bar view widget
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}