// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterTasks extends StatelessWidget {
  CounterTasks(
      {super.key, required this.completedTasks, required this.allTodos});
  int completedTasks;
  int allTodos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Text(
        '$completedTasks/$allTodos',
        style: TextStyle(
            fontSize: 30,
            color: completedTasks == allTodos ? Colors.green : Colors.white,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
