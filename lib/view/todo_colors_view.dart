import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/ui/color_ui.dart';
import 'package:flutter_todolist/ui/todo_form_header_ui.dart';
import 'package:provider/provider.dart';

const double colorSize = 36;
const List<Color> colors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.greenAccent,
  Colors.pink,
];

class TodoColors extends StatefulWidget {
  const TodoColors({super.key});

  @override
  State<TodoColors> createState() => _TodoColorsState();
}

class _TodoColorsState extends State<TodoColors> {
  void onTap(Color? color) {
    Provider.of<TodoViewModel>(context, listen: false).setTodo(color: color);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TodoFormHeader(title: "Colors"),
        const SizedBox(height: 10),
        Row(
          children: [
            for (var color in colors)
              ColorUI(
                onTap: onTap,
                color: color,
                colorSize: colorSize,
                isSelected: color ==
                    Provider.of<TodoViewModel>(context, listen: false)
                        .todo
                        .color,
              ),
          ],
        ),
      ],
    );
  }
}
