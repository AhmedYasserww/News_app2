import 'package:flutter/material.dart';
import 'package:news_app2/widget/news_listview.dart';
class CategoryViewDetailes extends StatelessWidget {
   CategoryViewDetailes({super.key,required this.category});
  String category ;
   //String text = ModalRoute.of(context)!.settings.arguments as String;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body:CustomScrollView(
        slivers: [
          NewsListView(category:category ,),
        ],

      ) );
  }
}
//