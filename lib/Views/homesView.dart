import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/lists/Category_List.dart';
import 'package:newsapp/Widgets/newsListBulider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Cloud",
              style: const TextStyle(
                color: Color.fromARGB(255, 210, 181, 119),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            CategoryList(),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            NewsListBulider(category: category),
            SliverToBoxAdapter(child: SizedBox(height: 50)),
          ],
        ),
      ),
    );
  }
}
