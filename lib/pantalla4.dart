import 'package:flutter/material.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({Key? key}) : super(key: key);

  static const List<String> listItems = ['apple', 'banana', 'melon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo 4'),
        backgroundColor: Colors.greenAccent, // Color pastel diferente
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
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Autocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<String>.empty();
                    }
                    return listItems.where((String item) {
                      return item.contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  onSelected: (String selection) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('You selected: $selection')),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
