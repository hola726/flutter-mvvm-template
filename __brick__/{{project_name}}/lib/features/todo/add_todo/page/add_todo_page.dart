import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/todo_form_field.dart';
import '../page_model/add_todo_page_model.dart';

class AddTodoPage extends StatelessWidget {
  static const id = "/addTodoPage";
  const AddTodoPage({Key? key}) : super(key: key);

  Widget _buildMain(AddTodoPageModel addTodoPageModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TodoFormField(
          textController: addTodoPageModel.nameController,
          title: "Name",
          onChanged: (value) => addTodoPageModel.nameValue = value,
        ),
        const SizedBox(
          height: 20,
        ),
        TodoFormField(
          textController: addTodoPageModel.descController,
          title: "Description",
          onChanged: (value) => addTodoPageModel.descValue = value,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          height: 40,
          child: ElevatedButton(
            onPressed: addTodoPageModel.saveTodo,
            child: const Text("확인"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final AddTodoPageModel addTodoPageModel = context.watch<AddTodoPageModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: _buildMain(addTodoPageModel),
    );
  }
}
