import 'package:flutter/material.dart';
import 'package:flutter_todolist/ui/bottom_navigator_ui.dart';
import 'package:flutter_todolist/ui/todo_appbar_ui.dart';

class TodoHome extends StatelessWidget {
  final Widget? child;
  final bool isBottomNavigationBar;

  const TodoHome({
    super.key,
    required this.child,
    this.isBottomNavigationBar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          59,
        ),
        child: const TodoAppBar(),
      ),
      bottomNavigationBar:
          isBottomNavigationBar ? const BottomNavigatorUI() : null,
    );
  }
}
