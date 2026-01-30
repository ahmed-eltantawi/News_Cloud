import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Services/get_news.dart';
import 'package:newsapp/Widgets/lists/News_List.dart';
import 'package:newsapp/Widgets/loadingArticles.dart';

class NewsListBulider extends StatefulWidget {
  const NewsListBulider({required this.category, super.key});
  final String category;
  @override
  State<NewsListBulider> createState() => _NewsListBuliderState();
}

class _NewsListBuliderState extends State<NewsListBulider> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    future = getGeneralNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(articles: snapshot.data!);
        } else {
          return NewsList(articles: loadingArticles(3));
        }
      },
    );
  }
}
