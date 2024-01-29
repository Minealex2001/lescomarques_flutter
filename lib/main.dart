import 'package:flutter/material.dart';
import 'package:lescomarques_flutter/screens/provincias_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final image = const AssetImage('assets/iesAlvaroFalomir.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/iesAlvaroFalomir.jpeg'),
              const SizedBox(height: 20.0),
              const Text("Les comarques \n de la Comunitat Valenciana",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text('Iniciar sesión'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => provinciasPage()));
                  print('Correo electrónico: ${_emailController.text}');
                  print('Contraseña: ${_passwordController.text}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
