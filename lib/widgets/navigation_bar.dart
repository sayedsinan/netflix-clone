import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;

  const NavigationBar({
    Key? key,
    required this.currentIndex,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: items,
      onTap: (index) {
        // Handle navigation item tap.
      },
    );
  }
}