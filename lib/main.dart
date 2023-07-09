import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/view/todo_home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
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
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<TodoViewModel>(
        create: (context) {
          return TodoViewModel();
        },
        child: const Scaffold(body: TodoHome()),
      ),
    );
  }
}
