import 'package:flutter/material.dart';

class TabBarTabBarViewPage extends StatefulWidget {
  const TabBarTabBarViewPage({Key? key}) : super(key: key);

  @override
  _TabBarTabBarViewPageState createState() => _TabBarTabBarViewPageState();
}

class _TabBarTabBarViewPageState extends State<TabBarTabBarViewPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0, // Hahahaha
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.black26,
          // isScrollable: true,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.cloud_outlined)),
            Tab(icon: Icon(Icons.beach_access_sharp)),
            Tab(icon: Icon(Icons.brightness_5_sharp)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(child: Text('It\'s cloudy here')),
          Center(child: Text('It\'s rainy here')),
          Center(child: Text('It\'s sunny here')),
        ],
      ),
    );
  }
}
