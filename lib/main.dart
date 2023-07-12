import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/ui/todo_appbar_ui.dart';
import 'package:flutter_todolist/view/todo_create_view.dart';
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
        child: Scaffold(
          body: const TodoCreateView(),
          appBar: PreferredSize(
            preferredSize: Size(
              MediaQuery.of(context).size.width,
              59,
            ),
            child: const TodoAppBar(),
          ),
        ),
      ),
    );
  }
}
