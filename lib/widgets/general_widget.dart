import 'package:flutter/material.dart';
import 'package:registration_app/model/album.dart';
import 'package:registration_app/model/categories_model.dart';
import 'package:registration_app/model/course_model.dart';

class GeneralWidget {
  static categoriesItem(Album category) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.lightBlue,
          minRadius: 30,
          maxRadius: 30,
          child: Icon(Icons.star),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 5, 4, 0),
          child: SizedBox(
            child: Center(
              child: Text(
                overflow: TextOverflow.ellipsis,
                  category.title,
                  maxLines: 1,
                style: const TextStyle(
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/${course.rate}',
                    width: 50,
                  ),
                  const Icon(Icons.heart_broken)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
