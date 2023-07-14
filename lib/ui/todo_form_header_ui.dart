import 'package:flutter/material.dart';

class TodoFormHeader extends StatelessWidget {
  final String title;

  const TodoFormHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-10, 5),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black12,
          fontWeight: FontWeight.w600,
          fontSize: 32,
        ),
      ),
    );
  }
}
