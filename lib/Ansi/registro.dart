import 'dart:js_util';

import 'package:ejercicio/Ansi/Inicio.dart';
import 'package:ejercicio/Ansi/home.dart';
import 'package:ejercicio/servicios/firebase.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController  nombreController = TextEditingController();
  TextEditingController  apellidoController = TextEditingController();
  TextEditingController  emailController = TextEditingController();
  TextEditingController  generoController = TextEditingController();
  TextEditingController  nombreUsuarioController = TextEditingController();
  TextEditingController  claveController = TextEditingController();
  TextEditingController  confirmclaveController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: apellidoController,
              decoration: const InputDecoration(labelText: 'Apellido'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: generoController,
              decoration: const InputDecoration(labelText: 'Género'),
            ),
            TextField(
              controller: nombreUsuarioController,
              decoration: const InputDecoration(labelText: 'Nombre de usuario'),
            ),
            TextField(
              controller: claveController,
              decoration: const InputDecoration(labelText: 'Clave'),
              obscureText: true,
            ),
            TextField(
              controller: confirmclaveController,
              decoration: const InputDecoration(labelText: 'Confirmación de clave'),
              obscureText: true,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async{
                String nombre = nombreController.text;
                String apellido = apellidoController.text;
                String email =  emailController.text;
                String genero = generoController.text;
                String nombreUsuario= nombreUsuarioController.text;
                String clave = claveController.text;
                String confirmClave = confirmclaveController.text;

                if (nombre.isEmpty ||
                    apellido.isEmpty ||
                    email.isEmpty ||
                    genero.isEmpty ||
                    nombreUsuario.isEmpty||
                    clave.isEmpty ||
                    confirmClave.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Por favor, complete todos los campos.'),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                } else if (clave != confirmClave) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Las claves no coinciden.'),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  await savePersona(nombreController.text,apellidoController.text,emailController.text,generoController.text,nombreUsuarioController.text,claveController.text);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => home()));
                }

              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
