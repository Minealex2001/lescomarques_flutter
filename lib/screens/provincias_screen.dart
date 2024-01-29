import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgets/main.dart';
import 'package:flutterwidgets/pantallas/Comarcas_pantalla.dart';
import 'dart:convert'; // Para  realizar conversiones entre tipos
import 'package:http/http.dart' as http; // Para reañozar ètocopmes HTTP
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
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/iesAlvaroFalomir.jpeg'),
              radius: 100,
            ),
          ],
        ),
      ),
    ),
    );
  }
}