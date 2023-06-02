import 'package:ejercicio/Ansi/Inicio.dart';
import 'package:ejercicio/Ansi/home.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

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
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Apellido'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _genderController,
              decoration: InputDecoration(labelText: 'Género'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Clave'),
              obscureText: true,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(labelText: 'Confirmación de clave'),
              obscureText: true,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                String firstName = _firstNameController.text;
                String lastName = _lastNameController.text;
                String email = _emailController.text;
                String gender = _genderController.text;
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;

                if (firstName.isEmpty ||
                    lastName.isEmpty ||
                    email.isEmpty ||
                    gender.isEmpty ||
                    password.isEmpty ||
                    confirmPassword.isEmpty) {
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
                } else if (password != confirmPassword) {
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
                  _registerUser(firstName, lastName, email, gender, password);
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

  void _registerUser(String firstName, String lastName, String email,
      String gender, String password) {
    print('Registrando usuario...');
    print('Nombre: $firstName $lastName');
    print('Email: $email');
    print('Genero: $gender');
    print('clave: $password');
  }
}
