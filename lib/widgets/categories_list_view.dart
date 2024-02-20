import 'package:flutter/material.dart';
import 'package:news_app/models/Category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(text: 'Health', image: 'assets/images/health.avif'),
    CategoryModel(
        text: 'Entertainment', image: 'assets/images/entertaiment.avif'),
    CategoryModel(text: 'Science', image: 'assets/images/science.avif'),
    CategoryModel(text: 'Technology', image: 'assets/images/technology.jpeg'),
    CategoryModel(text: 'Business', image: 'assets/images/business.jpg'),
    CategoryModel(
        text: 'Sports', image: 'assets/images/sports.jpg', color: Colors.black),
    CategoryModel(
        text: 'General',
        image: 'assets/images/general.jpg',
        color: Colors.black)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
