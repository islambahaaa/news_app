import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_app/models/Category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.text,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(category.image),
                )),
            child: Center(
              child: Text(
                category.text,
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: category.color,
                ),
              ),
            )),
      ),
    );
  }
}
