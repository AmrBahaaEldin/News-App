import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_6/Model/categorycard_model.dart';
import 'package:project_6/Services/news_service.dart';
import 'package:dio/dio.dart';
import 'package:project_6/View/category_view.dart';



class CategoryCard extends StatelessWidget {
   CategoryCard({super.key, required this.category,});
 late NewsService newsService;
 final CategoryCardModel category;


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  CategoryView(categoryType: category.headCard,),)) ,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
            right: 20.0),
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            image:   DecorationImage(

              image:
              AssetImage(category.imageCard),
              fit: BoxFit.fill

            ),
          ),
          child:  Center(
            child: Text(category.headCard,
            style:const TextStyle(color: Colors.white) ,
            ),
          ),
        ),
      ),
    );
  }
}