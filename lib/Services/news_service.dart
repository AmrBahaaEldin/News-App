
import '../Model/articale_model.dart';
import 'package:dio/dio.dart';



class NewsService{
  Dio dio =Dio();



// return Data should type data return
Future< List<ArticleModel>> getNews({required categoryData}) async {
  try {
    Response response = await dio.get('https://newsdata.io/api/1/latest?country=eg&category=$categoryData&apikey=pub_307143b5f441a211c5d53fc345ed07dfc8131');
    Map<String,dynamic>jsonData=response.data;
    List<dynamic>articles=jsonData["results"];
    List<ArticleModel>articleModelData=[];
    for (var article in articles){
     ArticleModel articleModel=ArticleModel(
         title:article["title"] ,
         description: article["description"],
         imageUrl: article['image_url'],
     );
     articleModelData.add(articleModel);
    }

    return articleModelData ;
  } on Exception catch (e) {
   return [] ;
    // TODO
  }


  }


  }


