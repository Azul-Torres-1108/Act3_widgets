import 'package:flutter/material.dart';

class Pantalla5 extends StatefulWidget {
  const Pantalla5({Key? key}) : super(key: key);

  @override
  State<Pantalla5> createState() => _Pantalla5State();
}

class _Pantalla5State extends State<Pantalla5> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Icon(Icons.home, size: 100),
    Icon(Icons.menu, size: 100),
    Icon(Icons.person, size: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo 5'),
        backgroundColor: Colors.purpleAccent.shade100, // Color pastel
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mederyth Azul Torres',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              '22308051281108',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: pages[_currentIndex],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
