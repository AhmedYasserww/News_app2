import 'package:flutter/material.dart';
import 'package:news_app2/models/artical_model.dart';
import 'package:news_app2/service/News_services.dart';
import 'package:news_app2/widget/news_tile.dart';
class NewsListView extends StatefulWidget {
  const NewsListView({super.key,required this.category});
  final String category;


  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> data = [];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
     getnews();
  }

Future<void> getnews() async {
    data= await NewsServices().getNews(category:widget.category);
    setState(() {

    });
}
  @override

  Widget build(BuildContext context) {
    return SliverList(

      delegate: SliverChildBuilderDelegate((context, index) {
         return NewsTile(articleModel:data[index]);
    },
        childCount: data.length
      ));
  }
}
