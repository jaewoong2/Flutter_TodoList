import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/category_model.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/ui/category_ui.dart' as ui;
import 'package:flutter_todolist/ui/todo_form_header_ui.dart';
import 'package:provider/provider.dart';

const double iconSize = 26;
const double iconPadding = 10;

List<CategoryModel> categories = [
  CategoryModel(
    category: CategoryEnum.workout,
    icon: Icons.directions_run,
    name: '운동',
  ),
  CategoryModel(
    category: CategoryEnum.afternoon,
    icon: Icons.wb_sunny_sharp,
    name: '오후',
  ),
  CategoryModel(
    category: CategoryEnum.night,
    icon: Icons.nights_stay,
    name: '밤',
  ),
  CategoryModel(
    category: CategoryEnum.morning,
    icon: Icons.alarm,
    name: '아침',
  ),
  CategoryModel(
    category: CategoryEnum.smallThing,
    icon: Icons.cleaning_services_rounded,
    name: '운동',
  ),
  CategoryModel(
    category: CategoryEnum.study,
    icon: Icons.border_color_outlined,
    name: '운동',
  ),
];

class TodoIcons extends StatefulWidget {
  const TodoIcons({super.key});

  @override
  State<TodoIcons> createState() => _TodoIconsState();
}

class _TodoIconsState extends State<TodoIcons> {
  void onTap(CategoryModel category) {
    Provider.of<TodoViewModel>(context, listen: false)
        .setTodo(category: category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TodoFormHeader(title: 'Icons'),
        const SizedBox(height: 10),
        Row(
          children: [
            for (var category in categories)
              ui.Category(
                category: category,
                iconSize: iconSize,
                onPressed: () {
                  onTap(category);
                },
                isSelected: Provider.of<TodoViewModel>(context, listen: false)
                        .todo
                        .category
                        .category ==
                    category.category,
              )
          ],
        ),
      ],
    );
  }
}
