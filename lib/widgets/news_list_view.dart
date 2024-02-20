import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_view.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});
  List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: NewsView(
            articleModel: articles[index],
          ),
        );
      },
    ));
  }
}
