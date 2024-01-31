import 'package:flutter/material.dart';

import '../data/api.dart';

void main() {
  runApp(const provincias());
}

class provincias extends StatelessWidget {
  const provincias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: provinciasPage(),
    );
  }
}

class provinciasPage extends StatefulWidget {
  const provinciasPage({super.key});

  @override
  _provinciasPageState createState() => _provinciasPageState();
}

class _provinciasPageState extends State<provinciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provincias'),
      ),
      body: ListView.builder(
        itemCount: provincies['provincies'].length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/comarques', arguments: {
                      'provincia': provincies['provincies'][index]['provincia'],
                      'comarcas': provincies['provincies'][index]['comarques'],
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children : [
                      CircleAvatar(
                      backgroundImage:
                      NetworkImage(provincies['provincies'][index]['img']),
                      radius: 125,
                    ),
                    Text(
                      provincies['provincies'][index]['provincia'],
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}