// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TodoCardWidget extends StatelessWidget {
  TodoCardWidget(
      {super.key,
      required this.todoTitle,
      required this.doneOrNot,
      required this.changeStatus,
      required this.index,
      required this.delete});
  // todo one
  final String todoTitle;
  final bool doneOrNot;
  final Function changeStatus;
  final int index;
  final Function delete;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // todo
        changeStatus(index);
      },
      // todo
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // todo
              Text(todoTitle,
                  style: TextStyle(
                    // todo
                    color: doneOrNot ? Colors.black : Colors.white,
                    decoration: doneOrNot
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  )),
              // todo
              Row(
                children: [
                  Icon(
                    doneOrNot ? Icons.check : Icons.close,
                    // size and color

                    size: 28,
                    color: doneOrNot ? Colors.green[400] : Colors.red,
                  ),
                  SizedBox(width: 12),
                  IconButton(
                    onPressed: () {
                      // todo

                      delete(index);
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 26,
                      color: Colors.red,
                    ),
                  ),
                ],
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
