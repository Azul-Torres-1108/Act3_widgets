import 'package:flutter/material.dart';

class Pantalla1 extends StatefulWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo 1'),
        backgroundColor: Colors.pinkAccent.shade100,
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
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  color: Colors.blueGrey.shade200,
                  child: AnimatedAlign(
                    alignment:
                        selected ? Alignment.topRight : Alignment.bottomLeft,
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    child: const FlutterLogo(size: 50.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
