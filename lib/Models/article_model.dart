class ArticleModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? url;

  ArticleModel({
    required this.image,
    required this.title,
    this.subtitle,
    this.url,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      subtitle: json['description'],
      title: json['title'],
      url: json['url'],
    );
  }
}
