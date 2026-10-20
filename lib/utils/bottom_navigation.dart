import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "*"),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: "*",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "*"),
      ],
      iconSize: 25,
      selectedItemColor: Colors.orange,
      // unselectedItemColor: Colors.grey,
      backgroundColor: Colors.grey[200],
    );
  }
}
