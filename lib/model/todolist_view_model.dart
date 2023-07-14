import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_model.dart';

class TodoListViewModel with ChangeNotifier {
  //player 중인지를 확인할 값
  List<TodoModel> _todoList = [];
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(debugLabel: "todo_create");

  List<TodoModel> get todoList => _todoList;
  GlobalKey<FormState> get formKey => _formKey;

  void toogleCompleted(int selectedId) {
    List<TodoModel> copyTodoList = [..._todoList];

    TodoModel selectedTodo = copyTodoList[
        _todoList.indexWhere((element) => element.id == selectedId)];
    selectedTodo.isCompleted = !selectedTodo.isCompleted;

    _todoList = copyTodoList;

    notifyListeners();
  }

  void addtodo(TodoModel todo) {
    _todoList = [..._todoList, todo];
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
