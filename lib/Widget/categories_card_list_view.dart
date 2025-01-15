import 'package:flutter/cupertino.dart';

import '../Model/categorycard_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CategoryCardModel>categoryCardModel=[
      CategoryCardModel(headCard: "business", imageCard: "assets/business.avif", ),
      CategoryCardModel(headCard: "entertainment", imageCard: "assets/entertaiment.avif",),
      CategoryCardModel(headCard: "world", imageCard: "assets/general.avif",),
      CategoryCardModel(headCard: "health", imageCard: "assets/health.avif",),
      CategoryCardModel(headCard: "science", imageCard: "assets/science.avif",),
      CategoryCardModel(headCard: "sports", imageCard: "assets/sports.avif",),];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount:categoryCardModel.length,
      itemBuilder: (context, index) => CategoryCard(category:categoryCardModel[index] ,), );
  }
}
