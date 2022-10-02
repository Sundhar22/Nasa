// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:nasa_app/screens/detail/widget/courselist.dart';
import 'package:nasa_app/utils/data.dart';
import 'package:nasa_app/utils/screen_size.dart';

class VariousCourses extends StatelessWidget {
  final List<Data> courseList;

  const VariousCourses({super.key, required this.courseList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "The Courses",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
              margin: EdgeInsets.symmetric(horizontal: useScreenWidth(5)),
              height: useScreenHeight(350),
              child: CourseList(
                module: courseList,
              ))
        ],
      ),
    );
  }
}
