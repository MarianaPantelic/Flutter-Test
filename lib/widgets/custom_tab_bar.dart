import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  
  CustomTabBar({required this.controller, required this.tabs});

  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double tabBarScaling = screenWidth > 1400 ? 0.5 : screenWidth > 1100 ? 0.6 : 0.7;
    return Container(
      width: 700,
      child: TabBar(controller: controller, tabs: tabs),

    );
  }
}