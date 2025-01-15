import 'package:flutter/material.dart';
import 'package:project_6/Services/news_service.dart';

import '../Model/articale_model.dart';


class TitleNews extends StatelessWidget {
   const TitleNews({super.key, required this.articleModel,});
   final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding:  const EdgeInsets.all(20.0),
          child: Container(
            width: 400,
            height: 200,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(image: NetworkImage(articleModel.imageUrl),
            ),


              ),
          ),
        ),
         Text(articleModel.title,
          style: const TextStyle(color: Colors.black),
          maxLines: 2,
        ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(articleModel.description,
            style:const TextStyle(color: Colors.grey),
            maxLines: 2,

          ),
        ),
      ],
    );
  }
}
