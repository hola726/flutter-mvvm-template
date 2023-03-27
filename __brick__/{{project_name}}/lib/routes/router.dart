import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../features/todo/add_todo/page/add_todo_page.dart';
import '../features/todo/add_todo/page_model/add_todo_page_model.dart';
import '../features/todo/display_todo/page/display_todo_page.dart';
import '../features/todo/display_todo/page_model/display_todo_page_model.dart';
import '../features/todo/services/todo_local_service.dart';
import '../home_page.dart';
import '../providers/network_provider.dart';
import '../services/local_service.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (_, __) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'addTodoPage',
          builder: addTodo,
        ),
        GoRoute(
          path: 'displayTodoPage',
          builder: displayTodo,
        ),
      ],
    ),
  ],
);

Widget addTodo(_, __) {
  return ChangeNotifierProvider(
    create: (context) => AddTodoPageModel(
      context: context,
      localService: TodoLocalService(localService: LocalService()),
    ),
    child: const AddTodoPage(),
  );
}

Widget displayTodo(_, __) {
  return ChangeNotifierProvider(
    create: (context) => DisplayTodoPageModel(
      networkProvider: context.read<NetworkProvider>(),
      localService: TodoLocalService(localService: LocalService()),
    ),
    child: const DisplayTodoPage(),
  );
}
