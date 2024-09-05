import 'package:flutter/material.dart';
import 'package:registration_app/model/course_model.dart';
import '../model/categories_model.dart';

class Utils {

  static List<CategoriesModel> categoriesList() => [
      CategoriesModel(title: 'Books', background: Colors.blue, icon: Icons.star),
      CategoriesModel(title: 'Movies', background: Colors.cyan, icon: Icons.movie),
      CategoriesModel(title: 'Music', background: Colors.yellow, icon: Icons.music_note),
      CategoriesModel(title: 'Games', background: Colors.limeAccent, icon: Icons.gamepad),
      CategoriesModel(title: 'Podcasts', background: Colors.lightGreen, icon: Icons.access_alarm_outlined),
    ];

  static List<CourseModel> coursesList() => [
    CourseModel(background: 'facebook.png', title: 'Morning textbook', rating: 6.0, isLiked:true, rate: 'rating.webp'),
    CourseModel(background: 'facebook.png', title: 'Morning textbook', rating: 5.0, isLiked:false, rate: 'rating.webp'),
    CourseModel(background: 'facebook.png', title: 'Morning textbook', rating: 4.0, isLiked:false, rate: 'rating.webp'),
    CourseModel(background: 'facebook.png', title: 'Morning textbook', rating: 7.2, isLiked:false, rate: 'rating.webp'),
    CourseModel(background: 'facebook.png', title: 'Morning textbook', rating: 6.0, isLiked:true, rate: 'rating.webp'),
  ];
}