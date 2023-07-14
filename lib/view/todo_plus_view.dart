import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_model.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/model/todolist_view_model.dart';
import 'package:flutter_todolist/ui/bounced_button_ui.dart';
import 'package:flutter_todolist/ui/todo_form_header_ui.dart';
import 'package:provider/provider.dart';

class TodoPlus extends StatelessWidget {
  const TodoPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TodoFormHeader(title: 'Plus'),
        const SizedBox(height: 10),
        AnimatedScale(
          duration: const Duration(milliseconds: 20),
          scale: 1,
          child: BouncedButton(
            onTap: () {
              var todoList =
                  Provider.of<TodoListViewModel>(context, listen: false);

              var todo = Provider.of<TodoViewModel>(context, listen: false);

              var formKey = todoList.formKey;

              if (formKey.currentState!.validate()) {
                todoList.addtodo(TodoModel.fromTodo(todo.todo));
                todo.init();

                formKey.currentState!.save();
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
                color: Colors.pink.shade100,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    '새로운 습관 시작 하기',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
