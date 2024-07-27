import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/models/artical_model.dart';
class NewsServices{
final Dio dio = Dio() ;
Future<List <ArticleModel>> getNews({required String category})async{
  Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=35418d9d66c74f0e83ce2b4fde3f791a&category=$category");
  Map<String,dynamic> jsondata = response.data;
  List<dynamic>articals = jsondata['articles'];
List<ArticleModel> articalList =[];
for(var article in articals){
  ArticleModel articalemodel = ArticleModel(image: article['urlToImage'],
      title: article['title'],
      subtitle: article['description']);
  articalList.add(articalemodel);
}
print (articalList.length);

return articalList;
}
}