import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/ui/shcedule_ui.dart';
import 'package:flutter_todolist/ui/todo_form_header_ui.dart';
import 'package:provider/provider.dart';

List<String> schedules = [
  "월요일",
  "화요일",
  "수요일",
  "목요일",
  "금요일",
  "토요일",
  "일요일",
];

class TodoSchedule extends StatefulWidget {
  const TodoSchedule({super.key});

  @override
  State<TodoSchedule> createState() => _TodoScheduleState();
}

class _TodoScheduleState extends State<TodoSchedule> {
  final Set<String> _schedules = {};

  void onTap(String? schedule) {
    if (schedule != null) {
      if (_schedules.contains(schedule)) {
        _schedules.remove(schedule);
      } else {
        _schedules.add(schedule);
      }

      Provider.of<TodoViewModel>(context, listen: false)
          .setTodo(schedule: _schedules.toList());
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TodoFormHeader(title: "Schedule"),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (var schedule in schedules)
              ScheduleUI(
                  schedule: schedule,
                  isSelected: _schedules.contains(schedule),
                  onTap: onTap)
          ],
        ),
      ],
    );
  }
}
