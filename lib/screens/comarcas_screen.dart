import 'package:flutter/material.dart';

import '../data/api.dart';

void main() {
  runApp(const comarcas());
}

class comarcas extends StatelessWidget {
  const comarcas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: comarcasPage(),
    );
  }
}

class comarcasPage extends StatefulWidget {
  const comarcasPage({super.key});

  @override
  _comarcasPageState createState() => _comarcasPageState();
}

class _comarcasPageState extends State<comarcasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comarcas'),
      ),
      body: const Center(
        child: Text('Aquí se mostrarán las comarcas'),
      ),
    );
  }
}