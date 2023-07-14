import 'package:flutter/material.dart';
import 'package:flutter_todolist/model/category_model.dart';

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
    return Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color.fromARGB(206, 255, 124, 168)
            : const Color.fromARGB(94, 255, 124, 168),
        borderRadius: const BorderRadius.all(Radius.circular(9)),
        border: isSelected ? Border.all(width: 2, color: Colors.black) : null,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          category.icon,
          size: iconSize,
        ),
      ),
    );
  }
}
