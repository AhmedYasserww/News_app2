import 'package:flutter/material.dart';
import 'package:news_app2/models/category_model.dart';
import 'package:news_app2/widget/categorycard.dart';
class CategoryListView extends StatelessWidget {
   CategoryListView({super.key});
  List <CategoryModel> categories =[

    CategoryModel(image: "assets/images/bussines.jpeg", text:"Business"),
    CategoryModel(image: "assets/images/entertaiment.jpeg", text: "Entertainment"),
    CategoryModel(image: "assets/images/general.jpeg", text: "General"),
    CategoryModel(image: "assets/images/health.jpeg", text:"Health"),
    CategoryModel(image:"assets/images/science.jpeg" , text:"Science"),
    CategoryModel(image:"assets/images/sports.jpeg" , text: "Sports"),
    CategoryModel(image: "assets/images/technology.jpeg", text:"Technology")
  ];
  @override
  Widget build(BuildContext context) {
    return

      Container(
       height: 120,
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:categories.length ,
          itemBuilder:(context,i){
          return SizedBox(width: 220, height: 120,child:  CategoryCard(cat:categories[i]));
          }
            ),
      );
  }
}
