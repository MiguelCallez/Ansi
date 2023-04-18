import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _hometState();
}

class _hometState extends State<home> {
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
              Tab(text: 'Comunidad'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Contenido de Técnicas'),
            ),
            Center(
              child: Text('Contenido de Ejercicios'),
            ),
            Center(
              child: Text('Contenido de Consejos'),
            ),
          ],
        ),
      ),
    );
  }
}
