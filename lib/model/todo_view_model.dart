import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_model.dart';

class TodoViewModel with ChangeNotifier {
  //player 중인지를 확인할 값
  List<TodoModel> _todoList = [];

  List<TodoModel> get todoList => _todoList;

  void toogleCompleted(int selectedId) {
    List<TodoModel> copyTodoList = [..._todoList];

    TodoModel selectedTodo = copyTodoList[
        _todoList.indexWhere((element) => element.id == selectedId)];
    selectedTodo.isCompleted = !selectedTodo.isCompleted;

    _todoList = copyTodoList;

    notifyListeners();
  }

  void addtodo(String todo) {
    _todoList = [
      ..._todoList,
      TodoModel(todo: todo, isCompleted: false, id: getLastId() + 1)
    ];
    notifyListeners();
  }

  void removeTodo(int selectedId) {
    List<TodoModel> copyTodoList = [..._todoList];

    TodoModel selectedTodo = copyTodoList[
        _todoList.indexWhere((element) => element.id == selectedId)];
    copyTodoList.remove(selectedTodo);

    _todoList = copyTodoList;
    notifyListeners();
  }

  void updateTodo({required String todo, required int selectedId}) {
    List<TodoModel> copyTodoList = [..._todoList];

    TodoModel selectedTodo = copyTodoList[
        _todoList.indexWhere((element) => element.id == selectedId)];
    selectedTodo.todo = todo;

    _todoList = copyTodoList;
    notifyListeners();
  }

  int getLastId() {
    if (todoList.isEmpty) return 0;

    return _todoList[_todoList.length - 1].id;
  }
}
