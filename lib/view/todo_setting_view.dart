import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
import 'package:flutter_todolist/model/todolist_view_model.dart';
import 'package:flutter_todolist/ui/bounced_button_ui.dart';
import 'package:provider/provider.dart';

class TodoSetting extends StatefulWidget {
  const TodoSetting({super.key});

  @override
  State<TodoSetting> createState() => _TodoSettingState();
}

class _TodoSettingState extends State<TodoSetting> {
  @override
  Widget build(BuildContext context) {
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

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Consumer<TodoListViewModel>(
          builder: (context, provider, child) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.notifications_active_outlined,
                        size: 28,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              '언제 알람을 드릴까요?',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: BouncedButton(
                                onTap: () {},
                                child: Text(
                                  '[매일] ${DateTime.now().hour.toString()}시 ${DateTime.now().minute.toString()}분',
                                  style: TextStyle(
                                    color: Colors.primaries.last,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
