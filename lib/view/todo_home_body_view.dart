import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todolist_view_model.dart';
import 'package:flutter_todolist/view/alert_message_view.dart';
import 'package:flutter_todolist/ui/todo_ui.dart';
import 'package:provider/provider.dart';

class TodoHomeBody extends StatelessWidget {
  const TodoHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "good moring bro",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AlertMessageUI(
            isShowMessage: true,
            title: Text(
              "굿-잡!",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            description: Text(
              'last week was your best week, you can do it again!',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Consumer<TodoListViewModel>(
            builder: (context, provider, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Habbitzs",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  for (var todo in provider.todoList)
                    Todo(
                      icon: todo.category.icon,
                      iconBgColor: todo.color,
                      todo: todo.todo,
                      day: DateTime.now()
                          .difference(todo.createdAt)
                          .inDays
                          .toString(),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
