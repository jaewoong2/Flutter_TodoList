import 'package:flutter/material.dart';

class ScheduleUI extends StatelessWidget {
  final String schedule;
  final bool isSelected;

  final Function(String?) onTap;

  const ScheduleUI({
    super.key,
    required this.schedule,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: InkWell(
        onTap: () {
          onTap(schedule);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(206, 255, 124, 168)
                : const Color.fromARGB(94, 255, 124, 168),
            shape: BoxShape.circle,
            border: isSelected ? Border.all(width: 2) : null,
          ),
          child: Text(
            textAlign: TextAlign.center,
            schedule[0],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
