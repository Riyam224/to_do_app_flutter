// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/views/widgets/todo_card_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

// todo
class Task {
  String title;
  bool status;

  // todo constructor
  Task({required this.title, required this.status});
}

// todo
List allTasks = [
  Task(title: 'sleep good', status: false),
  Task(title: 'drink water', status: true),
  Task(title: 'drawing', status: false),
  Task(title: 'drink coffee', status: true)
];

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 41, 73),
        appBar: AppBar(
          title: const Text(
            'TO DO APP',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 5, 22, 35),
        ),
        // todo parent container that width= double.infinity
        body: Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // todo remove [] from the list below by ...

              ...allTasks
                  .map((item) => TodoCardWidget(
                      todoTitle: item.title, doneOrNot: item.status))
                  .toList()
            ],
          ),
        ));
  }
}
