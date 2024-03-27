// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TodoCardWidget extends StatelessWidget {
  const TodoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        height: 50,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('first note ', style: TextStyle(color: Colors.white)),
            Icon(
              Icons.check,
              color: Colors.white,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 32, 70, 101),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
