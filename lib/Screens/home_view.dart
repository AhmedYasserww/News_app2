import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/widget/categoryList_view.dart';
import 'package:news_app2/widget/categorycard.dart';
import 'package:news_app2/widget/news_listview.dart';
import 'package:news_app2/widget/news_tile.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Text("News",style: TextStyle(fontSize: 25,),),
        Text("Cloud",style: TextStyle(fontSize: 25,color: Colors.orange),),
      ],),),
      body:CustomScrollView(
        slivers: [
         SliverToBoxAdapter(child:CategoryListView()
           ,),
         SliverToBoxAdapter(child: SizedBox(height: 20,),),
         NewsListView(category: 'general')
        ],
      )

          
    );
  }
}
