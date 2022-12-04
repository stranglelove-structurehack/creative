import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:structura_hack/screens/MapScreen.dart';
import 'package:structura_hack/service/navigation_bar_icons_icons.dart';

import '../screens/MainScreen.dart';
import '../screens/ModelScreen.dart';
import '../screens/ProfileScreen.dart';
import '../screens/QuestScreen.dart';

class CustomNavigationBar extends StatefulWidget {
  CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBar();
}

class _CustomNavigationBar extends State<CustomNavigationBar> {
  int selectedPage = 2;

  static const List<Widget> widgetOptions = <Widget>[
    QuestScreen(),
    ModelScreen(),
    MainScreen(),
    MapScreen(),
    ProfileScreen(),
  ];

  void onSelectTab(int index) {
    setState(() => selectedPage = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8FBFF),
        bottomNavigationBar: Container(
          color: const Color(0xFFF8FBFF),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: GNav(
              backgroundColor: const Color(0xFFF8FBFF),
              color: const Color(0xFF8F939E),
              activeColor: const Color(0xFFFFFFFF),
              tabBackgroundColor: Color(0xFF5E5BBB),
              tabBorderRadius: 20,
              iconSize: 30,
              gap: 8,
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 350),
              tabs: const [
                GButton(
                  icon: NavigationBarIcons.screen0,
                ),
                GButton(
                  icon: NavigationBarIcons.screen1,
                ),
                GButton(
                  icon: NavigationBarIcons.screen2,
                ),
                GButton(
                  icon: NavigationBarIcons.screen3,
                ),
                GButton(
                  icon: NavigationBarIcons.screen4,
                ),
              ],
              selectedIndex: selectedPage,
              onTabChange: onSelectTab,
            ),
          ),
        ),
        body: widgetOptions[selectedPage]);
  }
}
