import 'package:flutter/material.dart';
class cerrar extends StatefulWidget {
  const cerrar({super.key});

  @override
  State<cerrar> createState() => _cerrarState();
}

class _cerrarState extends State<cerrar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Text("cerrar"),
      )
    );
  }
}