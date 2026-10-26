import 'package:flutter/material.dart';
// BAGAS RAMIRO SAPUTRA
// 152024081
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 159, 2),
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Column(
                children: [
                  const Text('Nama', style: TextStyle(color: Colors.grey)),
                  const Text(
                    'Bagas Ramiro Saputra',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF0D1B68),
                    ),
                  ),

                  const Text('NIM', style: TextStyle(color: Colors.grey)),
                  const Text(
                    '15-2024-081',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF0D1B68),
                    ),
                  ),

                  const Text(
                    'Program Studi',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    'Informatika',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF0D1B68),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
