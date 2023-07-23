import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todolist_view_model.dart';
import 'package:flutter_todolist/view/todo_colors_view.dart';
import 'package:flutter_todolist/view/todo_habits_view.dart';
import 'package:flutter_todolist/view/todo_icons_view.dart';
import 'package:flutter_todolist/view/todo_plus_view.dart';
import 'package:flutter_todolist/view/todo_schedule_view.dart';
import 'package:provider/provider.dart';

class TodoCreateView extends StatefulWidget {
  const TodoCreateView({super.key});

  @override
  State<TodoCreateView> createState() => _TodoCreateViewState();
}

class _TodoCreateViewState extends State<TodoCreateView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Consumer<TodoListViewModel>(
          builder: (context, provider, child) {
            return Form(
              key: provider.formKey,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Habits(),
                  SizedBox(height: 20),
                  TodoIcons(),
                  SizedBox(height: 20),
                  TodoColors(),
                  SizedBox(height: 20),
                  TodoSchedule(),
                  SizedBox(height: 20),
                  TodoPlus(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
