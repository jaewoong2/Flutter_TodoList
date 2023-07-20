import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final IconData icon;
  final Color iconBgColor;
  final String todo;
  final String day;

  const Todo({
    super.key,
    required this.icon,
    required this.iconBgColor,
    required this.todo,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(500)),
                  border: Border.all(
                    color: iconBgColor.withRed(50).withBlue(125),
                    width: 3,
                  ),
                  color: iconBgColor,
                ),
                child: Icon(
                  icon,
                  size: 32,
                ),
              ),
              Text(
                todo,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Text(
            "$day day ing",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
