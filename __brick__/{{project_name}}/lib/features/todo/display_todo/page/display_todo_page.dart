import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/page_helper.dart';
import '../../widgets/todo_model_item.dart';
import '../page_model/display_todo_page_model.dart';

class DisplayTodoPage extends StatelessWidget {
  static const id = "/displayTodoPage";
  const DisplayTodoPage({Key? key}) : super(key: key);

  Widget _buildMain(DisplayTodoPageModel model) {
    if (model.isDisablePage()) {
      return PageHelper(
        isLoading: false,
        isEmpty: model.isEmpty(),
        isNetworkDisconnect: model.isNetworkDisConnect(),
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
              children: model.getTodoList!.map(
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
    final DisplayTodoPageModel model = context.watch<DisplayTodoPageModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List Page"),
      ),
      body: _buildMain(model),
    );
  }
}
