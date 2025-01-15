import 'package:flutter/material.dart';
import 'package:project_6/Model/articale_model.dart';
import 'package:project_6/Services/news_service.dart';
import 'package:project_6/Widget/title_news_list_view.dart';
import 'package:dio/dio.dart';
class TitleNewsBuilder extends StatefulWidget {

   String categoryData;
   TitleNewsBuilder({super.key ,required this.categoryData});

  @override
  State<TitleNewsBuilder> createState() => _TitleNewsBuilderState();
}

class _TitleNewsBuilderState extends State<TitleNewsBuilder> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    future= NewsService().getNews(categoryData:widget.categoryData);
  }
  @override
  Widget build(BuildContext context) {
     return FutureBuilder <List<ArticleModel>>(
      future:future, // الطلب
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const Center(child: CircularProgressIndicator())),
          ); // حالة التحميل
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(
                  child: Text('حدث خطأ: ${snapshot.error}')),
            ),
          ); // حالة الخطأ
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          // الطلب ناجح وهناك بيانات
          return  TitleNewsListView(snapShotData: snapshot.data!,);
        }
        else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Center(
                  child: Text("oops there was an error")),
            ),
          ); // حالة عدم وجود بيانات
        }
      },
    );


  }
}


