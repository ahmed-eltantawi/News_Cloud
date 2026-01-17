import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Views/article_model.dart';

class ArticaleWidget extends StatelessWidget {
  const ArticaleWidget({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: GestureDetector(
        onTap: () {
          if (article.url != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ArticleWebView(articleUrl: article.url);
                },
              ),
            );
          }
        },
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/loading.gif",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: article.image == null
                      ? Image.asset("assets/errors/NoImage.jpg")
                      : article.image!.startsWith("assets")
                      ? Image.asset(article.image!)
                      : networkImage(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                article.title == null ? 'Notitle' : article.title!,
                style: TextStyle(fontSize: 20),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
              child: Opacity(
                opacity: .5,
                child: Text(
                  article.subtitle == null ? '' : article.subtitle!,
                  style: TextStyle(fontSize: 15),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Image networkImage() {
    try {
      Image image = Image.network(
        article.image!,
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      );
      return image;
    } catch (e) {
      return Image.asset("assets/errors/NoImage.jpg");
    }
  }
}
