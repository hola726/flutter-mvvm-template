import '../../../services/local_service.dart';
import '../model/todo_model.dart';

class TodoLocalService {
  TodoLocalService({required LocalService localService})
      : _localService = localService;

  final LocalService _localService;

  List<TodoModel>? getTodoList() {
    return _localService.handleBox<List<TodoModel>>(StorageKey.TODO).get(0);
  }

  Future<void> setTodo({
    required TodoModel todoData,
  }) async {
    List<TodoModel>? todoList = getTodoList();
    if (todoList == null) {
      todoList = [todoData];
    } else {
      todoList.add(todoData);
    }

    await _localService
        .handleBox<List<TodoModel>>(StorageKey.TODO)
        .put(0, todoList);
  }

  Future<void> deleteTodoList() async {
    await _localService.handleBox<List<TodoModel>>(StorageKey.TODO).delete(0);
  }

  Future<void> clearTodoList() async {
    await _localService.handleBox<List<TodoModel>>(StorageKey.TODO).clear();
  }
}
