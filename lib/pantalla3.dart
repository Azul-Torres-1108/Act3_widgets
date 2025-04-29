import 'package:flutter/material.dart';

class Pantalla3 extends StatefulWidget {
  const Pantalla3({Key? key}) : super(key: key);

  @override
  State<Pantalla3> createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo 3'),
        backgroundColor:
            Colors.lightGreenAccent.shade100, // Color pastel cambiado
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
          const SizedBox(height: 20),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedRotation(
                    turns: turns,
                    duration: const Duration(seconds: 1),
                    child: const FlutterLogo(size: 100),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() => turns += 0.25);
                    },
                    child: const Text('Rotate Logo'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
