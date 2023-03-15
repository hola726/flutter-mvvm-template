import 'package:flutter/material.dart';

import '../model/todo_model.dart';

class TodoModelItem extends StatelessWidget {
  const TodoModelItem({
    Key? key,
    required this.todoModel,
  }) : super(key: key);

  final TodoModel todoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            todoModel.name,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            todoModel.description!,
          )
        ],
      ),
    );
  }
}
