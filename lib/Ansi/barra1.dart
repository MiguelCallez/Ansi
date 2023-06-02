import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class barra1 extends StatefulWidget {
  @override
  _barra1State createState() => _barra1State();
}

class _barra1State extends State<barra1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade600,
      width: double.infinity,
      height: 155,
      padding: EdgeInsets.only(top:20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
             


          /*   child: ListView(children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(59, 66, 66, 66),
                child: Icon(
                  CupertinoIcons.person,
                  color: Colors.white,
                ),
              ),
              onTap: (){},
              title: Text(
                "miguel",
                style: const TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "cliente",
                style: const TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
              child: Text("app ansi",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black)),
            ),
            ListTile(
              title: Text('info'),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(59, 66, 66, 66),
                child: Icon(
                  CupertinoIcons.info,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('configuracion'),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(59, 66, 66, 66),
                child: Icon(Icons.settings,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('contacto psicologo'),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(59, 66, 66, 66),
                child: Icon(Icons.phone,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('recomendaciones'),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(59, 66, 66, 66),
                child: Icon(Icons.message,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Cerrar sesion'),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(59, 66, 66, 66),
                child: Icon(Icons.login_outlined,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          ]),
             */ 
            ),
        ],
          ),
    );
  }
}
   