import 'package:flutter/material.dart';

class TodoAppBar extends StatelessWidget {
  final String title;

  const TodoAppBar({super.key, this.title = '해빗츠'});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0,
      leading: const SizedBox(width: 0),
      elevation: 0,
      backgroundColor: const Color(0xffffffff),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.pets_rounded,
            color: Colors.black,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
