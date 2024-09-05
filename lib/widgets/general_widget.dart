import 'package:flutter/material.dart';
import 'package:registration_app/model/categories_model.dart';
import 'package:registration_app/model/course_model.dart';

class GeneralWidget {
  static categoriesItem(CategoriesModel category) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: category.background,
          minRadius: 30,
          maxRadius: 30,
          child: Icon(category.icon),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(category.title),
        )
      ],
    );
  }

  static courseItem(CourseModel course) {
    return Card(
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Image.asset(
              height: 100,
              width: 150,
              fit: BoxFit.fill,
              'assets/${course.background}',
            ),
            Text(course.title,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/${course.rate}',
                  width: 50,
                ),
                const Icon(Icons.heart_broken)
              ],
            )
          ],
        ),
      ),
    );
  }
}
