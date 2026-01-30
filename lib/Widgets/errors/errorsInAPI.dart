import 'package:newsapp/Models/article_model.dart';

List<ArticleModel> errorInAPIRequest(String theError) {
  List<ArticleModel> errorInAPIRequest = [
    ArticleModel(
      image: "assets/errors/errorInAPIRequest.png",
      title: "Sorry, there is a problem in Data requests. We work in it.",
      subtitle: theError,
    ),
  ];
  return errorInAPIRequest;
}
