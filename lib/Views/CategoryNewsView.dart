import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/newsListBulider.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          categoryName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: CustomScrollView(
          slivers: [
            NewsListBulider(category: categoryName),
            SliverToBoxAdapter(child: SizedBox(height: 40)),
          ],
        ),
      ),
    );
  }
}
