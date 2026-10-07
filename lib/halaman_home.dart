import 'package:flutter/material.dart';

import 'halaman_menu.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Money'),
        backgroundColor: const Color.fromARGB(255, 15, 159, 2),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16), //icon dan button
              margin: EdgeInsets.all(10), //jarak dari tepi layar
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.add_circle,
                    size: 40,
                    color: const Color.fromARGB(255, 0, 255, 17),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //biar rata kiri
                      children: [
                        Text(
                          'Tambah akun',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Add a new item to the list',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //ini bagian 2
            Container(
              padding: EdgeInsets.all(16), //icon dan button
              margin: EdgeInsets.all(10), //jarak dari tepi layar
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), 
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.money,
                    size: 40,
                    color: const Color.fromARGB(255, 0, 255, 68),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //biar rata kiri
                      children: [
                        Text(
                          'Money History',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Add a new item to the list',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //ini bagian 2
            Container(
              padding: EdgeInsets.all(16), //icon dan button
              margin: EdgeInsets.all(10), //jarak dari tepi layar
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 40,
                    color: const Color.fromARGB(255, 17, 249, 0),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //biar rata kiri
                      children: [
                        Text(
                          'Report',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Add a new item to the list',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
              child: Text('Go to Menu Page'),
            ),
          ],
        ),
      ),
    );
  }
}
