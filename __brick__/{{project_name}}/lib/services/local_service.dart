import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../features/todo/model/todo_model.dart';

enum StorageKey {
  TODO,
}

class LocalService {
  static final LocalService _singleton = LocalService._internal();
  factory LocalService() => _singleton;

  LocalService._internal();

  Future<Box<T>> _handleOpenBox<T>(StorageKey key) async {
    return await Hive.openBox<T>(
      describeEnum(
        key,
      ),
    );
  }

  Box<T> handleBox<T>(StorageKey key) {
    return Hive.box<T>(
      describeEnum(
        key,
      ),
    );
  }

  Future<void> setLocalStorage() async {
    await Hive.initFlutter();
    _registerAdapter();
    await _openBox();
  }

  void _registerAdapter() {
    Hive.registerAdapter(TodoModelAdapter());
  }

  Future<void> _openBox() async {
    await _handleOpenBox<List<TodoModel>>(StorageKey.TODO);
  }
}
