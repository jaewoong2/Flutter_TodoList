import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/category_model.dart';
import 'package:flutter_todolist/ui/bounced_button_ui.dart';

class Category extends StatelessWidget {
  final CategoryModel category;
  final double iconSize;
  final Function()? onPressed;
  final bool isSelected;

  const Category({
    super.key,
    required this.category,
    required this.iconSize,
    required this.isSelected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BouncedButton(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(206, 255, 124, 168)
              : const Color.fromARGB(94, 255, 124, 168),
          borderRadius: const BorderRadius.all(Radius.circular(9)),
          border: isSelected
              ? Border.all(width: 2, color: Colors.black)
              : Border.all(
                  width: 2,
                  color: Colors.transparent,
                ),
        ),
        child: Icon(
          category.icon,
          size: iconSize,
        ),
      ),
    );
  }
}
