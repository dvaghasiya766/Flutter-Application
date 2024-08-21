import 'package:flutter/material.dart';
import 'package:my_first_project/Dashboard/Cart.dart';
import 'package:my_first_project/Dashboard/Home.dart';
import 'package:my_first_project/Dashboard/Profile.dart';
import 'package:my_first_project/Dashboard/Search.dart';
import 'package:simple_floating_bottom_nav_bar/floating_bottom_nav_bar.dart';
import 'package:simple_floating_bottom_nav_bar/floating_item.dart';

class Dashboard1 extends StatefulWidget {
  const Dashboard1({super.key});

  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  List<FloatingBottomNavItem> bottomNavItems = const [
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "Home",
    ),
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.search_outlined),
      activeIcon: Icon(Icons.search),
      label: "Search",
    ),
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.add_circle_outline),
      activeIcon: Icon(Icons.add_circle),
      label: "Add",
    ),
    FloatingBottomNavItem(
      inactiveIcon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  List<Widget> pages = [
    Home(),
    Search(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return FloatingBottomNavBar(
      pages: pages,
      items: bottomNavItems,
      initialPageIndex: 0,
      backgroundColor: const Color.fromARGB(168, 0, 0, 0),
      elevation: 0,
      radius: 20,
      width: 300,
      height: 63,
    );
  }
}
