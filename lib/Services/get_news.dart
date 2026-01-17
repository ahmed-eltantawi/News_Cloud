import 'package:dio/dio.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Widgets/errors/errorsInAPI.dart';

Future<List<ArticleModel>> getGeneralNews({required String category}) async {
  //!---------------- I am using this block to test the delay of response-------
  // await Future.delayed(Duration(seconds: 3), () {
  //   print("Hello");
  // });
  //!===========================================================================

  //*--- taking the data from the API ---*
  try {
    final dio = Dio();
    final Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apikey=e97c920cfbec47b0aee451a55dfccd59&category=$category',
    );
    List<ArticleModel> articlesList = [];

    dynamic jsondata = response.data;
    dynamic articles = jsondata["articles"];

    //-----------------------------------------------------
    //*--- This for loop fills the List with Articles -----
    //-----------------------------------------------------
    for (var item in articles) {
      ArticleModel article = ArticleModel.fromJson(item);
      articlesList.add(article);
    }
    return articlesList;
  } catch (theError) {
    return errorInAPIRequest(theError.toString());
  }
}
