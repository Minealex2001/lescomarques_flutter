import 'package:flutter/material.dart';

void main() {
  runApp(const comarca());
}

class comarca extends StatelessWidget {
  const comarca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: comarcaPage(),
    );
  }
}

class comarcaPage extends StatefulWidget {
  const comarcaPage({super.key});

  @override
  _comarcaPageState createState() => _comarcaPageState();
}

class _comarcaPageState extends State<comarcaPage> {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    var comarca = arguments['comarca']; // Accede a la lista de comarcas pasada
    return Scaffold(
      appBar: AppBar(
        title: Text(comarca['comarca']),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text("HOLA")
            // Image.network(comarca['img']),
            // Text(comarca['comarca']),
          ],
        ),
      ),
    );
  }
}
