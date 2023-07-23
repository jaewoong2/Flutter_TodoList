import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/category_model.dart';
import 'package:flutter_todolist/model/todo_model.dart';

class TodoViewModel with ChangeNotifier {
  TodoModel _todo = TodoModel(
    todo: '',
    isCompleted: false,
    category: CategoryModel(
      category: CategoryEnum.morning,
      name: '',
      icon: Icons.abc,
    ),
    color: Colors.red,
    schedule: [],
    id: 0,
    createdAt: DateTime.now(),
  );

  TodoModel get todo => _todo;

  init() {
    _todo = TodoModel(
      todo: '',
      isCompleted: false,
      category: CategoryModel(
        category: CategoryEnum.morning,
        name: '',
        icon: Icons.abc,
      ),
      color: Colors.red,
      schedule: [],
      id: 0,
      createdAt: DateTime.now(),
    );
  }

  setTodo(
      {String? todo,
      bool? isCompleted,
      CategoryModel? category,
      Color? color,
      List<String>? schedule,
      int? id,
      DateTime? createdAt}) {
    if (todo != null) {
      _todo.todo = todo;
    }
    if (isCompleted != null) {
      _todo.isCompleted = isCompleted;
    }
    if (category != null) {
      _todo.category = category;
    }
    if (color != null) {
      _todo.color = color;
    }
    if (schedule != null) {
      _todo.schedule = schedule;
    }
    if (id != null) {
      _todo.id = id;
    }
    if (createdAt != null) {
      _todo.createdAt = createdAt;
    }
  }
}
