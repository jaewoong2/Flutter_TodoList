import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/ui/todo_form_header_ui.dart';
import 'package:provider/provider.dart';

const double fontSize = 22;

class Habits extends StatefulWidget {
  const Habits({super.key});

  @override
  State<Habits> createState() => _HabitsState();
}

class _HabitsState extends State<Habits> {
  final textController = TextEditingController();

  void clearText() {
    textController.clear();
  }

  void onChangeTodo(String value) {
    Provider.of<TodoViewModel>(context, listen: false).setTodo(todo: value);
  }

  void onSavedTodo(String? value) {
    clearText();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TodoFormHeader(title: "Habbits"),
        SizedBox(
          height: 60,
          child: Row(
            children: [
              const Text(
                textAlign: TextAlign.center,
                '내가 원하는 것은',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: MediaQuery.of(context).size.width - 250,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, top: 4),
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value == '') {
                            return '값을 입력 해주세요';
                          }
                          return null;
                        },
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        controller: textController,
                        onChanged: onChangeTodo,
                        autofocus: true,
                        onSaved: onSavedTodo,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
