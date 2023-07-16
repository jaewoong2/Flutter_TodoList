import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/model/todolist_view_model.dart';
import 'package:flutter_todolist/view/todo_create_view.dart';
import 'package:flutter_todolist/view/todo_home_body_view.dart';
import 'package:flutter_todolist/view/todo_home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoListViewModel()),
        ChangeNotifierProvider(create: (_) => TodoViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const TodoHome(
              child: TodoHomeBody(),
            ),
        '/create': (context) => const TodoHome(
              isBottomNavigationBar: false,
              child: TodoCreateView(),
            ),
      },
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
