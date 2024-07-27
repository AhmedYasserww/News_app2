import 'package:flutter/material.dart';
import 'package:news_app2/models/category_model.dart';
import 'package:news_app2/Screens/category_details.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.cat});
final CategoryModel cat;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)
      {
        return CategoryViewDetailes(category: cat.text);
      },
      ),
      );
        },
        child: Container(
          alignment: Alignment.center,
          width:220,
          height: 120,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(15),
              image:DecorationImage(
                  image: AssetImage(cat.image),
                  fit: BoxFit.fill
              )),
          child: Text(cat.text,style:const TextStyle(fontSize: 28,color: Colors.white,fontWeight:FontWeight.bold),),
        ),
      ),
    );
  }
}
