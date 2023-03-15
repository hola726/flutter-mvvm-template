import 'package:flutter/cupertino.dart';

import '../../model/todo_model.dart';
import '../../services/todo_local_service.dart';

class AddTodoPageModel extends ChangeNotifier {
  AddTodoPageModel({
    required BuildContext context,
    required TodoLocalService addTodoLocalService,
  })  : _context = context,
        _addTodoLocalService = addTodoLocalService;

  final BuildContext _context;
  final TodoLocalService _addTodoLocalService;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  String? _nameValue;
  String? _descValue;

  BuildContext get context => _context;
  TextEditingController get nameController => _nameController;
  TextEditingController get descController => _descController;

  set nameValue(String? nameValue) {
    _nameValue = nameValue;
    notifyListeners();
  }

  set descValue(String? descValue) {
    _descValue = descValue;
    notifyListeners();
  }

  void saveTodo() {
    if (_nameValue != null && _descValue != null) {
      _addTodoLocalService.setTodo(
        todoData: TodoModel(
          name: _nameValue!,
          description: _descValue,
        ),
      );
      _nameController.clear();
      _descController.clear();
    }
  }
}
