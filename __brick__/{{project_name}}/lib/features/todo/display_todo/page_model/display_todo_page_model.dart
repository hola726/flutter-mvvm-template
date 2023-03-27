import 'package:flutter/cupertino.dart';

import '../../../../providers/network_provider.dart';
import '../../model/todo_model.dart';
import '../../services/todo_local_service.dart';

class DisplayTodoPageModel extends ChangeNotifier {
  DisplayTodoPageModel({
    required TodoLocalService localService,
    required NetworkProvider networkProvider,
  })  : _localService = localService,
        _networkProvider = networkProvider;

  final TodoLocalService _localService;
  final NetworkProvider _networkProvider;

  List<TodoModel>? get getTodoList => _localService.getTodoList();

  bool isDisablePage() {
    return isEmpty();
  }

  bool isEmpty() {
    return getTodoList == null || getTodoList!.isEmpty;
  }

  bool isNetworkDisConnect() {
    return !_networkProvider.isEnableNetwork;
  }
}
