import 'package:ejercicio/Ansi/Emergencia.dart';
import 'package:ejercicio/Ansi/Inicio.dart';
import 'package:ejercicio/Ansi/barra/barralateral.dart';
import 'package:ejercicio/Ansi/home.dart';
import 'package:ejercicio/Ansi/registro.dart';
import 'package:ejercicio/Ansi/estres.dart';
import 'package:ejercicio/Ansi/comunidad.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ansi',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      
      initialRoute: 'inicio',
      routes: {'inicio': (_) => inicio(), 'registro': (_) => SignUpPage(),'home': (_) => home(),'Emergencia':(_) => Emergencia(),'estres':(_)=> estres(),'comunidad':(_)=> comunidad(),'barra': (_) => barra()},
    );
  }
}
