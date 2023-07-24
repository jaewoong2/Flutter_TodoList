import 'package:flutter/material.dart';
import 'package:flutter_todolist/ui/bounced_button_ui.dart';

class BottomNavigatorUI extends StatelessWidget {
  const BottomNavigatorUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        color: Colors.pinkAccent.shade100,
        boxShadow: const [BoxShadow(color: Colors.black, offset: Offset(0, 4))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BouncedButton(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name == '/') {
                return;
              }
              Navigator.pushNamed(context, '/');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
              child: Icon(
                Icons.home_outlined,
                size: 32,
              ),
            ),
          ),
          BouncedButton(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name == '/create') {
                return;
              }
              Navigator.pushNamed(context, '/create');
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: const Icon(
                Icons.add,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
          BouncedButton(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
              child: Icon(
                Icons.legend_toggle_outlined,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
