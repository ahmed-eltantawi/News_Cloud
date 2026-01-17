import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Widgets/items/ArticaleWidget.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return ArticaleWidget(article: articles[index]);
      }),
    );
  }
}
