import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ejercicio/Ansi/comunidad.dart';

class Emergencia extends StatefulWidget {
  const Emergencia({super.key});

  @override
  State<Emergencia> createState() => _EmergenciaState();
}

class _EmergenciaState extends State<Emergencia> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ansi'),
          
          bottom: TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Emergencia'),
              FractionallySizedBox(
                      widthFactor: 0.35,
                      child: ElevatedButton(
                          child: Tab(text: 'Comunidad'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => comunidad()));
                          }),
                    ),
              

              
            ],
          ),
        ),
        ),

    );
  }
}