import 'package:flutter/material.dart';
import 'package:newsapp/Models/CategoryModel.dart';
import 'package:newsapp/Widgets/items/CategoryWidget.dart';

final class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
  final List<CategoryModel> categorys = const [
    CategoryModel(image: 'assets/Catergories/business.avif', name: "Business"),
    CategoryModel(
      image: 'assets/Catergories/entertainment.png',
      name: "Entertainment",
    ),
    CategoryModel(image: 'assets/Catergories/science.avif', name: "Science"),
    CategoryModel(image: 'assets/Catergories/health.avif', name: "uHealth"),
    CategoryModel(image: 'assets/Catergories/sports.avif', name: "Sports"),
    CategoryModel(
      image: 'assets/Catergories/technology.jpg',
      name: "Technology",
    ),
    CategoryModel(image: 'assets/Catergories/general.avif', name: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: categorys[0].height,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) {
            return CategoryWidget(category: categorys[index]);
          },
        ),
      ),
    );
  }
}
