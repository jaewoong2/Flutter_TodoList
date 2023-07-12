import 'package:flutter/material.dart';
import 'package:flutter_todolist/view/todo_colors_view.dart';
import 'package:flutter_todolist/view/todo_habits_view.dart';
import 'package:flutter_todolist/view/todo_icons_view.dart';
import 'package:flutter_todolist/view/todo_plus_view.dart';
import 'package:flutter_todolist/view/todo_schedule_view.dart';

class TodoCreateView extends StatelessWidget {
  const TodoCreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
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
  }
}
