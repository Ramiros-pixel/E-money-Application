import 'package:flutter/material.dart';
import 'package:episode_3/pages/halaman_home.dart';
import 'package:episode_3/pages/halaman_maps.dart';

import '../main.dart';
// BAGAS RAMIRO SAPUTRA
// 152024081
class Navbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const Navbar({
    super.key,
    required this.selectedIndex, // Add this parameter
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
