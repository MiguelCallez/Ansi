import 'package:ejercicio/Ansi/barra/barralateral.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ejercicio/Ansi/estres.dart';
import 'package:ejercicio/Ansi/Emergencia.dart';
import 'barra/barraMenu.dart';
import 'barra/barralateral.dart';
import 'barra/info.dart';

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
              Tab( child: ElevatedButton(
                          child: Tab(text: 'Home'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home()));
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
              
              

              Tab( child: ElevatedButton(
                          child: Tab(text: 'Comunidad'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => barra()));
                          }),
                          ),
            ],
          ),
        ),
        
        drawer: Drawer(
          child: Column(
          children: [
            const infoavatar(name:"miguel",
            profession: "cliente",
            ),
            Padding(
              padding: const EdgeInsets.only(left:24, top: 42,bottom: 16),
              child: Text("app ansi", 
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white70)),
            ),
            menu()
          ],
        )
        ),

        body: ListView(
          
          children: [
            Center(
        child: Column(
          children: [
           
            Container(
              height: 100,
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  SizedBox(width: 10),
                  Text(
                    'Ejercicios',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            
            _buildSectionTitle('Ejercicios de cardio'),
            _buildExerciseCard(
              'Cardio básico',
              '20 minutos',
              'assets/images/cardio_basico.jpg',
              context,
            ),
            _buildExerciseCard(
              'Cardio intenso',
              '30 minutos',
              'assets/images/cardio_intenso.jpg',
              context,
            ),
            
            _buildSectionTitle('Ejercicios de respiración'),
            _buildExerciseCard(
              'Respiración profunda',
              '10 minutos',
              'images/Captura de pantalla 2023-03-16 160322.png',
              context,
            ),
            _buildExerciseCard(
              'Respiración abdominal',
              '15 minutos',
              'assets/images/respiracion_abdominal.jpg',
              context,
            ),
  
            _buildSectionTitle('Ejercicios de relajación'),
            _buildExerciseCard(
              'Relajación muscular progresiva',
              '20 minutos',
              'assets/images/relajacion_muscular.jpg',
              context,
            ),
            _buildExerciseCard(
              'Meditación guiada',
              '25 minutos',
              'assets/images/meditacion.jpg',
              context,
            ),
          ],
          
        ),
      ),
          ]
        ),
      ),
       
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget _buildExerciseCard(
      String title, String duration, String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
       
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => estres()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        )

          
        ),
    );
  }
  }




























































































































































