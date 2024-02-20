import 'package:flutter/material.dart';

class CategoryModel {
  const CategoryModel(
      {required this.text, required this.image, this.color = Colors.white});
  final String text;
  final String image;
  final Color color;
}
