import 'package:flutter/material.dart';

class TodoSchedule extends StatelessWidget {
  const TodoSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-10, 10),
          child: const Text(
            'Schedule',
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
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(94, 255, 124, 168),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "S",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(94, 255, 124, 168),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "M",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(94, 255, 124, 168),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "T",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(94, 255, 124, 168),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "W",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(94, 255, 124, 168),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "T",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(94, 255, 124, 168),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "F",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(94, 255, 124, 168),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "S",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
