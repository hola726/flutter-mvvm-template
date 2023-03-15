import 'package:flutter/cupertino.dart';

import '../../model/todo_model.dart';
import '../../services/todo_local_service.dart';

class DisplayTodoPageModel extends ChangeNotifier {
  DisplayTodoPageModel({
    required TodoLocalService addTodoLocalService,
  }) : _addTodoLocalService = addTodoLocalService;

  final TodoLocalService _addTodoLocalService;

  List<TodoModel>? get getTodoList => _addTodoLocalService.getTodoList();
}
