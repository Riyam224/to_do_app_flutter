// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/views/widgets/counter_tasks.dart';
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
  List allTasks = [
    Task(title: 'sleep good', status: true),
    Task(title: 'drink water', status: true),
    Task(title: 'drawing', status: true),
    Task(title: 'drink coffee', status: true)
  ];

// todo delete

  deleteAllTasks() {
    setState(() {
      allTasks.removeRange(0, allTasks.length);
    });
  }

// todo
  delete(int clickedTask) {
    setState(() {
      allTasks.remove(allTasks[clickedTask]);
    });
  }

  // todo
  changeStatus(int taskIndex) {
    setState(() {
      allTasks[taskIndex].status = !allTasks[taskIndex].status;
    });
  }

  addNewTask() {
    setState(() {
      allTasks.add(Task(title: myController.text, status: false));
    });
  }

  int calculateCompletedTasks() {
    int completedTask = 0;
    for (var item in allTasks) {
      if (item.status) {
        completedTask++;
      }
    }
    return completedTask;
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
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11)),
                child: Container(
                    padding: EdgeInsets.all(10),
                    height: 200,
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
                    )),
              );
            },
            // todo
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
        actions: [
          IconButton(
              onPressed: () {
                // todo
                deleteAllTasks();
              },
              icon: Icon(
                Icons.delete_forever,
                size: 40,
                color: Colors.white,
              ))
        ],
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
            // todo counter
            CounterTasks(
              allTodos: allTasks.length,
              completedTasks: calculateCompletedTasks(),
            ),
            // todo
            Container(
              margin: EdgeInsets.only(top: 22),
              height: 300,
              child: ListView.builder(
                itemCount: allTasks.length,
                itemBuilder: (BuildContext context, int index) {
                  return TodoCardWidget(
                    todoTitle: allTasks[index].title,
                    doneOrNot: allTasks[index].status,
                    changeStatus: changeStatus,
                    index: index,
                    delete: delete,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
