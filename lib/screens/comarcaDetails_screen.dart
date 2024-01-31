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
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    var comarca = arguments['comarques']; // Accede a la lista de comarcas pasada
    return Scaffold(
      appBar: AppBar(
        title: Text(comarca['comarca']),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              comarca['img'],
              width: MediaQuery.of(context).size.width,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              comarca['comarca'],
              style: const TextStyle(
                fontSize: 30,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              comarca['capital'],
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              comarca['desc'],
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: indexSelected,
        onTap: (index) {
          setState(() {
            indexSelected = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informació',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Previsió',
            backgroundColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}