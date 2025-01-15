import 'package:flutter/material.dart';
import 'package:project_6/Model/articale_model.dart';
import 'package:project_6/Widget/title_News.dart';

class TitleNewsListView extends StatelessWidget {
 final  List<ArticleModel> snapShotData;
   const TitleNewsListView({
    super.key,
   required this.snapShotData,
  });

  @override
  Widget build(BuildContext context) {

    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) =>
            TitleNews(articleModel: snapShotData[index]),
        childCount: snapShotData.length,

      ),
    );
  }
}