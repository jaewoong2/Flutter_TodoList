import 'package:flutter/material.dart';

const double colorSize = 36;

class TodoColors extends StatelessWidget {
  const TodoColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-10, 10),
          child: const Text(
            'Colors',
            style: TextStyle(
              color: Colors.black12,
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                width: colorSize,
                height: colorSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                width: colorSize,
                height: colorSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                width: colorSize,
                height: colorSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: const Icon(
                  Icons.check_circle_outline_outlined,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                width: colorSize,
                height: colorSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                width: colorSize,
                height: colorSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
