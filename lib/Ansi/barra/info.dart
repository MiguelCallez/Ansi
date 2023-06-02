import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class infoavatar extends StatelessWidget {
  const infoavatar({
    super.key, required this.name, required this.profession,
  });

 final String name, profession;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      leading: const CircleAvatar(
        backgroundColor: Color.fromARGB(59, 66, 66, 66),
        child: Icon(CupertinoIcons.person,
        color: Colors.white,
        ),
        ),
        title: Text(name,
        style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(profession,
        style: const TextStyle(color: Colors.white),
        ),
    );
  }
}