import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app2/models/artical_model.dart';
class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(

            borderRadius: BorderRadius.circular(20),

              child:articleModel.image !=null?
              Image(
                image: NetworkImage(articleModel.image!),
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ):const Image(
                width: double.infinity,
                height: 200,
                image: AssetImage("assets/images/imagesnull.png"),fit: BoxFit.fill,)),
         const SizedBox(height:10,),

          Text(articleModel.title,
            style:const TextStyle( color: Colors.black87,
              fontSize: 22,
              fontWeight: FontWeight.w500,) ,
            maxLines:2,
            overflow: TextOverflow.ellipsis,

          ),
          Text(articleModel.subtitle!=null ? articleModel.subtitle!:"Null",
            style:const TextStyle(color: Colors.grey, fontSize: 20),),
        ],
      ),
    );
  }
}
