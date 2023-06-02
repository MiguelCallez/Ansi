import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
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
        color: const Color.fromARGB(0, 78, 78, 78),
        child: Column(
          children: [
            const infoavatar(name:"miguel",
            profession: "cliente",
            ),
            ListTile(
              leading: SizedBox(
              height: 34,
              width: 34,
              child: RiveAnimation.asset(""),
            ),)
          ],
        ),
        ),
    );
  }
}
