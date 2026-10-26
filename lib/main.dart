import 'package:flutter/material.dart';

import '/pages/halaman_home.dart';
import 'pages/halaman_maps.dart';
import 'widget/navbar.dart';
import 'pages/profile.dart';

// BAGAS RAMIRO SAPUTRA 
// 152024081
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final List<Widget> pages = const [HomePage(), halaman_maps(), ProfilePage()];

  void pindahHalaman(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Money'),
        backgroundColor: const Color.fromARGB(255, 15, 159, 2),
        foregroundColor: Colors.white,
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: Navbar(
        selectedIndex: selectedIndex,
        onTap: pindahHalaman,
      ),
    );
  }
}
