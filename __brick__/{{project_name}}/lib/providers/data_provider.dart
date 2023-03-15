import 'package:flutter/cupertino.dart';

import '../features/todo/model/todo_model.dart';

class DataProvider extends ChangeNotifier {
  TodoModel? _todoModel;

  TodoModel? get todoModel => _todoModel;

  set todoModel(TodoModel? todoModel) {
    _todoModel = todoModel;
    notifyListeners();
  }
}
