import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todolist_view_model.dart';
import 'package:provider/provider.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({super.key});

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();

  void clearText() {
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Consumer<TodoListViewModel>(
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
                        validator: (text) {
                          if (text == null) {
                            return '비어 있습니다.';
                          }
                          if (text == '') {
                            return '비어 있습니다.';
                          }
                          return null;
                        },
                        controller: textController,
                        onSaved: (value) {
                          setState(() {
                            if (value == null) return;
                          });
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // validation 이 성공하면 폼 저장하기
                            _formKey.currentState!.save();
                            textController.clear();
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
