import 'package:flutter/material.dart';
import 'package:flutter_todolist/ui/bounced_button_ui.dart';

class ColorUI extends StatelessWidget {
  final double? colorSize;
  final Color? color;
  final bool isSelected;

  final Function(Color?) onTap;

  const ColorUI({
    super.key,
    this.colorSize,
    this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: BouncedButton(
        onTap: () {
          onTap(color);
        },
        child: Container(
          width: colorSize,
          height: colorSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: isSelected
                ? Border.all(
                    width: 2,
                    color: Colors.black,
                  )
                : Border.all(
                    width: 2,
                    color: Colors.transparent,
                  ),
          ),
          child: isSelected
              ? const Icon(
                  Icons.check_circle_outline_outlined,
                  color: Colors.black,
                  weight: 500,
                )
              : null,
        ),
      ),
    );
  }
}
