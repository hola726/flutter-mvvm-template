import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/todo/add_todo/page/add_todo_page.dart';
import 'features/todo/display_todo/page/display_todo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go(AddTodoPage.id),
                child: const Text("Add Todo"),
              ),
              ElevatedButton(
                onPressed: () => context.go(DisplayTodoPage.id),
                child: const Text("Display Todo"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
