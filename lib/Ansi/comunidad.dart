import 'package:flutter/material.dart';
import 'Emergencia.dart';
import 'home.dart';
class comunidad extends StatefulWidget {
  const comunidad({super.key});

  @override
  State<comunidad> createState() => _comunidadState();
}

class _comunidadState extends State<comunidad> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ansi'),
          bottom: TabBar(
            tabs: [
             Tab(
                child: ElevatedButton(
                    child: Tab(text: 'Home'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    }),
              ),
              Tab(
                child: ElevatedButton(
                    child: Tab(text: 'Emergencia'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Emergencia()));
                    }),
              ),
              Tab(
                child: ElevatedButton(
                    child: Tab(text: 'Comunidad'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => comunidad()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}