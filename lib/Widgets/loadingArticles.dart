import 'package:newsapp/Models/article_model.dart';

List<ArticleModel> loadingArticles(int numberOfLoadingArticles) {
  List<ArticleModel> loadingArticlesList = [];
  for (int i = 0; i < numberOfLoadingArticles; i++) {
    loadingArticlesList.add(
      ArticleModel(
        image: 'assets/loading.gif',
        title: "Articles is loading, please wait",
      ),
    );
  }
  return loadingArticlesList;
}
