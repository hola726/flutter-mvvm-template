import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/todo_form_field.dart';
import '../page_model/add_todo_page_model.dart';

class AddTodoPage extends StatelessWidget {
  static const id = "/addTodoPage";
  const AddTodoPage({Key? key}) : super(key: key);

  Widget _buildMain(AddTodoPageModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TodoFormField(
          textController: model.nameController,
          title: "Name",
          onChanged: (value) => model.nameValue = value,
        ),
        const SizedBox(
          height: 20,
        ),
        TodoFormField(
          textController: model.descController,
          title: "Description",
          onChanged: (value) => model.descValue = value,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          height: 40,
          child: ElevatedButton(
            onPressed: model.saveTodo,
            child: const Text("확인"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final AddTodoPageModel model = context.watch<AddTodoPageModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: _buildMain(model),
    );
  }
}
