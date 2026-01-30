import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Widgets/items/ArticaleWidget.dart';

class articleWebError extends StatelessWidget {
  const articleWebError({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 200),
      child: ArticaleWidget(
        article: ArticleModel(
          image: 'assets/articleNotFound.jpg',
          title: 'WebPage not available',
        ),
      ),
    );
  }
}
