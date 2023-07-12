import 'package:flutter/material.dart';

const double iconSize = 26;
const double iconPadding = 10;

class TodoIcons extends StatelessWidget {
  const TodoIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-10, 10),
          child: const Text(
            'Icons',
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
              decoration: const BoxDecoration(
                color: Color.fromARGB(94, 255, 124, 168),
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(iconPadding),
                child: Icon(
                  Icons.access_time_rounded,
                  size: iconSize,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                color: const Color.fromARGB(179, 255, 124, 168),
                borderRadius: const BorderRadius.all(Radius.circular(9)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(iconPadding),
                child: Icon(
                  Icons.local_drink_sharp,
                  size: iconSize,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(94, 255, 124, 168),
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(iconPadding),
                child: Icon(
                  Icons.link,
                  size: iconSize,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: const BoxDecoration(
                color: Color.fromARGB(94, 255, 124, 168),
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(iconPadding),
                child: Icon(
                  Icons.house,
                  size: iconSize,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
