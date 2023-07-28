import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/todo_view_model.dart';
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

    void onClickSettingButton() {
      showModalBottomSheet<void>(
        context: context,
        enableDrag: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Container()),
                    IconButton(
                      icon: const Icon(
                        Icons.close_rounded,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    }

    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Consumer<TodoViewModel>(
          builder: (context, provider, child) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 2,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                    ),
                    child: Row(
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
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.only(
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        '반복: 매주 ${provider.todo.schedule.join(',')}',
                                        style: TextStyle(
                                          color: Colors.primaries.last,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        '시간: ${DateTime.now().hour}시 ${DateTime.now().minute}분',
                                        style: TextStyle(
                                          color: Colors.primaries.last,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    BouncedButton(
                                      onTap: () {
                                        onClickSettingButton();
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.only(top: 10),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 130, 136, 220),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Row(
                                          children: [
                                            Text(
                                              '설정하기',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.arrow_right_alt_sharp,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    thickness: 2,
                    color: Colors.black,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
