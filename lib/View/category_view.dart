import 'package:flutter/material.dart';

import '../Widget/title_news_builder.dart';

class CategoryView extends StatelessWidget {
  final String  categoryType;
  const CategoryView({super.key,required this.categoryType });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          TitleNewsBuilder(
            categoryData: categoryType,) ,
        ],
      ),
    );
  }
}
