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

class _HomeViewState extends State<HomeView> {
  // todo
  // todo
  List allTasks = [
    Task(title: 'sleep good', status: false),
    Task(title: 'drink water', status: true),
    Task(title: 'drawing', status: false),
    Task(title: 'drink coffee', status: true)
  ];

  addNewTask() {
    setState(() {
      allTasks.add(Task(title: myController.text, status: false));
    });
  }

  // todo
  final myController = TextEditingController();

  // final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // todo
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // todo
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.amber[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          // todo
                          controller: myController,
                          maxLength: 30,
                          decoration: InputDecoration(
                            hintText: 'Add new Task',
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        TextButton(
                          onPressed: () {
                            // todo
                            addNewTask();
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ));
              },
              // todo
              isScrollControlled: true,
            );
          },
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.redAccent,
        ),
        //
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
