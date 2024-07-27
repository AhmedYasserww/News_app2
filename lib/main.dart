import 'package:flutter/material.dart';
import 'package:news_app2/Screens/home_view.dart';
import 'package:news_app2/models/artical_model.dart';
import 'package:news_app2/service/News_services.dart';
import 'package:news_app2/Screens/category_details.dart';

void main(){

  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home:HomeView(),

    );
  }
}

