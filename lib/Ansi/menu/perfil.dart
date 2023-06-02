import 'package:flutter/material.dart';
class perfil extends StatefulWidget {
  const perfil({super.key});

  @override
  State<perfil> createState() => _perfilState();
}

class _perfilState extends State<perfil> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perfil de Usuario'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/profile_image.png'), // Coloca la imagen de perfil en la carpeta 'assets'
              ),
              SizedBox(height: 20.0),
              Text(
                'Nombre de Usuario',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}