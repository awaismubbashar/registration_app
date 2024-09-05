import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class CourseModel {
  String background;
  String title;
  double rating;
  bool isLiked;
  String rate;

  CourseModel({required this.title, required this.background,required this.rating, required this.rate, required this.isLiked});
}