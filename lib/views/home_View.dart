// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/views/widgets/todo_card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              TodoCardWidget(),
              TodoCardWidget(),
              TodoCardWidget(),
              TodoCardWidget(),
              TodoCardWidget(),
              // todo
            ],
          ),
        ));
  }
}
