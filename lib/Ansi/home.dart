import 'package:ejercicio/Ansi/barra1.dart';
import 'package:ejercicio/Ansi/barra/barralateral.dart';
import 'package:ejercicio/Ansi/comunidad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ejercicio/Ansi/estres.dart';
import 'package:ejercicio/Ansi/Emergencia.dart';
import 'menu/cerrarSesion.dart';
import 'menu/configuracion.dart';
import 'menu/contacto.dart';
import 'menu/info.dart';
import 'menu/perfil.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _hometState();
}

class _hometState extends State<home> {
  var pagina = DrawerSections.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if(pagina==DrawerSections.home){
      container= home();
    }else if(pagina==DrawerSections.perfil){
      container= perfil();
    }else if(pagina==DrawerSections.info){
      container = info();
    }else if(pagina==DrawerSections.configuracion){
      container = configuracion();
    }else if(pagina==DrawerSections.contacto_psicologo){
      container = contacto();
    }else if(pagina==DrawerSections.cerrarSesion){
      container = cerrar();
    }
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
     drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                barra1(),
                drawerbarra(),
              ],
            ),
          ),
        ),
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
                          
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSectionTitle('curso de ansiedad'),
                _buildExerciseCard(
                  'ejecicios de respiracion',
                  '20 minutos',
                  'assets/iconos',
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
        ]),
      ),
    );
  }
Widget drawerbarra() {
    return Container(
        padding: EdgeInsets.only(top: 15),
        child: Column(children: [
           menuItem(7, "home", Icons.home,
              pagina == DrawerSections.perfil ? true : false),
          menuItem(1, "perfil", Icons.person,
              pagina == DrawerSections.perfil ? true : false),
          menuItem(2, "info", Icons.info,
              pagina == DrawerSections.info ? true : false),
          menuItem(3, "configuracion", Icons.settings,
              pagina == DrawerSections.configuracion ? true : false),
          menuItem(4, "contacto psicologo", Icons.phone,
              pagina == DrawerSections.contacto_psicologo ? true : false),
          menuItem(5, "recomendaciones", Icons.message,
              pagina == DrawerSections.recomendaciones ? true : false),
          menuItem(6, "cerrar sesion", Icons.login_outlined,
              pagina == DrawerSections.cerrarSesion ? true : false),
        ]));
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if(id==1){
              pagina=DrawerSections.perfil;
            }else if(id==2){
              pagina=DrawerSections.info;
            }else if(id==3){
              pagina=DrawerSections.configuracion;
            }else if(id==4){
              pagina=DrawerSections.contacto_psicologo;
            }else if(id==5){
              pagina=DrawerSections.recomendaciones;
            }else if(id==6){
              pagina=DrawerSections.cerrarSesion;
            }else if(id==7){
              pagina=DrawerSections.home;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
          )),
    );
  }
enum DrawerSections {
  perfil,
  info,
  configuracion,
  contacto_psicologo,
  recomendaciones,
  cerrarSesion,
  home,
}