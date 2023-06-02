import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


class menu extends StatelessWidget {
  const menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(color: Color.fromARGB(59, 85, 85, 85),
          height: 1,
          ),
        ),
         
         Padding(
          padding: const EdgeInsets.only(left: 14),
          child: ListTile(
          title: Text("info",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Colors.white)),
          leading: Icon(CupertinoIcons.info,
          color: Colors.white,
          ),
          ),
        ),
      ],
    );
  }
}
