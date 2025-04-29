import 'package:flutter/material.dart';

class Pantalla6 extends StatefulWidget {
  const Pantalla6({Key? key}) : super(key: key);

  @override
  State<Pantalla6> createState() => _Pantalla6State();
}

class _Pantalla6State extends State<Pantalla6> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo 6'),
        backgroundColor: Colors.greenAccent.shade100, // Color pastel
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
              child: CheckboxListTile(
                title: const Text('Checkbox List Tile'),
                subtitle: const Text('This is a subtitle'),
                value: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() => _isChecked = newValue);
                },
                activeColor: Colors.orangeAccent,
                checkColor: Colors.white,
                tileColor: Colors.black12,
                controlAffinity: ListTileControlAffinity.leading,
                tristate: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
