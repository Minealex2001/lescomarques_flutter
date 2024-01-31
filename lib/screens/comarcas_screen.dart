import 'package:flutter/material.dart';
import 'package:lescomarques_flutter/data/api.dart';

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
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    var comarcas = arguments['comarcas']; // Accede a la lista de comarcas pasada
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['provincia']), // Muestra el nombre de la provincia
      ),
      body: ListView.builder(
        itemCount: comarcas.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(comarcas[index]['img']),
              title: Text(comarcas[index]['comarca']),
              onTap: () {
                Navigator.pushNamed(context, '/detalleComarca', arguments: comarcas[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
