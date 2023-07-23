import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/category_model.dart';

class TodoModel {
  //player 중인지를 확인할 값
  late bool isCompleted = false;
  late String todo = '';
  late CategoryModel category;
  late Color color;
  late List<String> schedule;
  late DateTime createdAt;

  late int id = 0;

  TodoModel({
    required this.isCompleted,
    required this.todo,
    required this.id,
    required this.category,
    required this.color,
    required this.schedule,
    required this.createdAt,
  });

  TodoModel.fromTodo(TodoModel newTodo)
      : isCompleted = false,
        todo = newTodo.todo,
        category = newTodo.category,
        color = newTodo.color,
        schedule = newTodo.schedule,
        createdAt = newTodo.createdAt;
}
