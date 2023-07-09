import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:provider/provider.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({super.key});

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  String _todo = '';

  void clearText() {
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Consumer<TodoViewModel>(
        builder: (context, provider, child) {
          var todoList = provider.todoList;

          return Column(
            children: [
              for (var todo in todoList)
                Text(
                  todo.todo,
                  style: const TextStyle(color: Colors.black),
                ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: textController,
                        onSaved: (value) {
                          setState(() {
                            if (value == null) return;
                            _todo = value;
                          });
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // validation 이 성공하면 폼 저장하기
                            _formKey.currentState!.save();
                            provider.addtodo(_todo);
                            textController.clear();
                            _todo = '';
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
