import 'package:flutter/material.dart';
import 'pantalla1.dart';
import 'pantalla2.dart';
import 'pantalla3.dart';
import 'pantalla4.dart';
import 'pantalla5.dart';
import 'pantalla6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Animados',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomeScreen(),
      routes: {
        '/pantalla1': (context) => const Pantalla1(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
        '/pantalla4': (context) => const Pantalla4(),
        '/pantalla5': (context) => const Pantalla5(),
        '/pantalla6': (context) => const Pantalla6(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100, // Color pastel
        centerTitle: true, // Centrar el contenido
        title: Column(
          children: const [
            Text(
              'Mederyth Azul Torres',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              '22308051281108',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                _buildButton(context, 'Pantalla 1', '/pantalla1'),
                _buildButton(context, 'Pantalla 2', '/pantalla2'),
                _buildButton(context, 'Pantalla 3', '/pantalla3'),
                _buildButton(context, 'Pantalla 4', '/pantalla4'),
                _buildButton(context, 'Pantalla 5', '/pantalla5'),
                _buildButton(context, 'Pantalla 6', '/pantalla6'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Botón blanco
          padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 20), // Botón más pequeño
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () => Navigator.pushNamed(context, route),
        child: Text(
          title,
          style:
              const TextStyle(fontSize: 16, color: Colors.black), // Texto negro
        ),
      ),
    );
  }
}
