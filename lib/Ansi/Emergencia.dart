import 'package:flutter/material.dart';
import 'package:ejercicio/Ansi/comunidad.dart';
import 'barra1.dart';
import 'home.dart';
import 'menu/cerrarSesion.dart';
import 'menu/configuracion.dart';
import 'menu/contacto.dart';
import 'menu/info.dart';
import 'menu/perfil.dart';

class Emergencia extends StatefulWidget {
  const Emergencia({super.key});

  @override
  State<Emergencia> createState() => _EmergenciaState();
}

class _EmergenciaState extends State<Emergencia> {
  var pagina = DrawerSections.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if (pagina == DrawerSections.home) {
      container = home();
    } else if (pagina == DrawerSections.perfil) {
      container = perfil();
    } else if (pagina == DrawerSections.info) {
      container = info();
    } else if (pagina == DrawerSections.configuracion) {
      container = configuracion();
    } else if (pagina == DrawerSections.contacto_psicologo) {
      container = contacto();
    } else if (pagina == DrawerSections.cerrarSesion) {
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
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.local_hospital,
                size: 100.0,
                color: Colors.red,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.white),
                    SizedBox(width: 10.0),
                    Text(
                      'Llamar a Urgencias',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Recomendaciones',
                ),
                maxLines: 4,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                 
                },
                child: Text(
                  'Guardar Recomendaciones',
                  style: TextStyle(fontSize: 20.0),
                ),
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
            if (id == 1) {
              pagina = DrawerSections.perfil;
            } else if (id == 2) {
              pagina = DrawerSections.info;
            } else if (id == 3) {
              pagina = DrawerSections.configuracion;
            } else if (id == 4) {
              pagina = DrawerSections.contacto_psicologo;
            } else if (id == 5) {
              pagina = DrawerSections.recomendaciones;
            } else if (id == 6) {
              pagina = DrawerSections.cerrarSesion;
            } else if (id == 7) {
              pagina = DrawerSections.home;
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

enum DrawerSections {
  perfil,
  info,
  configuracion,
  contacto_psicologo,
  recomendaciones,
  cerrarSesion,
  home,
}
