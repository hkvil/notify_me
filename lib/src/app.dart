import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notify_me/src/ui/screens/home_screen.dart';
import 'package:notify_me/src/ui/screens/comic_screen.dart';
import 'package:notify_me/src/ui/screens/subsribed_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //Set the initial index to 0 = HomeScreen
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  //Screens for the bottom navigation bar
  List<Widget> _buildScreens() {
    return [
      // const HomeScreen(),
      const ComicScreen(),
      const SubsribedScreen(),
    ];
  }

  //Items for the bottom navigation bar
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.notifications_active),
        title: ("Subscribed"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotifyMe!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PersistentTabView(
        context,
        screens: _buildScreens(),
        controller: _controller,
        items: _navBarsItems(),
        isVisible: true,
      ),
    );
  }
}
