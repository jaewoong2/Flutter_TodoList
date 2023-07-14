import 'package:flutter/material.dart';

enum CategoryEnum {
  workout,
  study,
  smallThing,
  morning,
  afternoon,
  evening,
  night
}

class CategoryModel {
  CategoryEnum category = CategoryEnum.workout;
  IconData icon = Icons.abc;
  String name = '';

  CategoryModel({
    required this.category,
    required this.icon,
    required this.name,
  });
}
