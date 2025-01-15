import 'package:flutter/material.dart';
import '../Widget/categories_card_list_view.dart';

import '../Widget/title_news_builder.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb02e99),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pop"),
          Text(" News",
          style: TextStyle(
            color: Colors.yellow
          ),),

        ],
                ),
      ),
      body:      CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child:   SizedBox(
                height: 100,
                child: CategoriesListView(),),
          ),
          TitleNewsBuilder(categoryData: "world",) ,
        ],

      )
    );
  }
}



