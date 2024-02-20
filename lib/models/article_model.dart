class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? articleUrl;
  ArticleModel(
      {required this.articleUrl,
      required this.image,
      required this.title,
      required this.subTitle});
  factory ArticleModel.fromjson(json) {
    return ArticleModel(
        articleUrl: json['url'],
        title: json['title'],
        image: json['urlToImage'],
        subTitle: json['description']);
  }
}
