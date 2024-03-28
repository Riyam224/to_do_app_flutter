// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TodoCardWidget extends StatelessWidget {
  TodoCardWidget({
    super.key,
    required this.todoTitle,
    required this.doneOrNot,
    required this.myFun,
    required this.iii,
  });
  // todo one
  final String todoTitle;
  final bool doneOrNot;
  final Function myFun;
  final int iii;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // todo
        myFun(iii);
      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo
              Text(todoTitle, style: TextStyle(color: Colors.white)),
              // todo
              Icon(
                doneOrNot ? Icons.check : Icons.close,
                // size and color

                size: 28,
                color: doneOrNot ? Colors.green[400] : Colors.red,
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 32, 70, 101),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
