import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/todo_model_item.dart';
import '../page_model/display_todo_page_model.dart';

class DisplayTodoPage extends StatelessWidget {
  static const id = "/displayTodoPage";
  const DisplayTodoPage({Key? key}) : super(key: key);

  Widget _buildMain(DisplayTodoPageModel displayTodoPageModel) {
    if (displayTodoPageModel.getTodoList == null ||
        displayTodoPageModel.getTodoList!.isEmpty) {
      return const Center(
        child: Text(
          "데이터가 없습니다.",
          style: TextStyle(fontSize: 15),
        ),
      );
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Column(
              children: displayTodoPageModel.getTodoList!.map(
                (todoData) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TodoModelItem(
                      todoModel: todoData,
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final DisplayTodoPageModel displayTodoPageModel =
        context.watch<DisplayTodoPageModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List Page"),
      ),
      body: _buildMain(displayTodoPageModel),
    );
  }
}
