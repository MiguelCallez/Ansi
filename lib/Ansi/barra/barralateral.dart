import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'barraMenu.dart';
import 'info.dart';

class barra extends StatefulWidget {
  const barra({super.key});

  @override
  State<barra> createState() => _barraState();
}

class _barraState extends State<barra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xFF17203A),
        child:SafeArea(
        child: Column(
          children: [
            const infoavatar(name:"miguel",
            profession: "cliente",
            ),
            Padding(
              padding: const EdgeInsets.only(left:24, top: 32,bottom: 16),
              child: Text("app ansi", 
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white70)),
            ),
            menu()
          ],
        ),
        ),
        ),
    );
  }
}
