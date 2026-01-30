import 'package:flutter/material.dart';
import 'package:newsapp/Models/CategoryModel.dart';
import 'package:newsapp/Views/CategoryNewsView.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryNewsView(categoryName: category.name);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 15, top: 10),
        width: category.width,

        decoration: BoxDecoration(
          color: Colors.grey,

          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
