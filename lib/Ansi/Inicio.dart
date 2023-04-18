import 'package:ejercicio/Ansi/Emergencia.dart';
import 'package:ejercicio/Ansi/registro.dart';

import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Flexible(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Imagen1.png'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.6,
                      child: Image.asset('images/icon.png'),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.6,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            "Usuario",
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.6,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            "Clave",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.35,
                      child: ElevatedButton(
                          onPressed: (() => print("funciona")),
                          child: Text("Login")),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.35,
                      child: ElevatedButton(
                          child: Text("Sing Up"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.2,
                      child: ElevatedButton(
                      
                      child: Image.asset('images/smartphone.png'),
                      onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Emergencia()));
                      },
                      ),
                      ),
                    SizedBox(
                      height: 55,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
