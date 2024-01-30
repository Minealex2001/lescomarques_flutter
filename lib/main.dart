import 'package:flutter/material.dart';
import 'package:lescomarques_flutter/screens/comarcas_screen.dart';
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
      routes: {
        '/provincias': (context) => provinciasPage(),
        '/comarcas': (context) => comarcasPage(),
      },
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
              const SizedBox(height: 30.0),
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
                obscureText: true,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const provinciasPage()));
                  print('Correo electrónico: ${_emailController.text}');
                  print('Contraseña: ${_passwordController.text}');
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text('Registrarse'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: Container(
                          width: 600, // Establece el ancho que desees
                          height: 400, // Establece la altura que desees
                          child: AlertDialog(
                            title: const Text('Registro'),
                            content: Column(
                              children: <Widget>[
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
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    labelText: 'Contraseña',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              SizedBox(
                                width: 100,),
                              TextButton(
                                child: const Text('Cancelar'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  print("Cancelado");
                                },
                              ),
                              TextButton(
                                child: const Text('Registrarse'),
                                onPressed: () {
                                  // Aquí puedes poner la lógica de registro
                                  Navigator.of(context).pop();
                                  print('Correo electrónico: ${_emailController.text}');
                                  print('Contraseña: ${_passwordController.text}');
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
