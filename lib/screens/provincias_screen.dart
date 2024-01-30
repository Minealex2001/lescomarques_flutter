import 'package:flutter/material.dart';

import '../data/api.dart';
import 'comarcas_screen.dart';

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
            child: GestureDetector(
              onTap: () {
                print("CLick");
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            provincies['provincies'][index]['imatge']),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.4),
                          Colors.black.withOpacity(.2),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          provincies['provincies'][index]['nom'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
