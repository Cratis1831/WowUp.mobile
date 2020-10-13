import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wowup_mobile/components/app_icons.dart';
import 'package:wowup_mobile/constants.dart';
import 'package:wowup_mobile/screens/my_addons/my_addons_screen.dart';
import 'package:wowup_mobile/screens/settings/settings_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Image.asset(
          'assets/images/wowup_512.png',
          height: 64,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: kPrimaryColour,
        child: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.list)),
            //Tab(icon: Icon(AppIcons.wowup_512, size: 32)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(AppIcons.raiderio, size: 32)),
            Tab(icon: Icon(Icons.settings)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          //GetAddonsScreen(),
          MyAddonsScreen(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Nothing to show yet...'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Nothing to show yet...'),
            ],
          ),
          SettingsScreen(),
        ],
      ),
    );
  }
}
