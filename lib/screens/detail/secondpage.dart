// ignore_for_file: public_member_api_docs, sort_constructors_first, unrelated_type_equality_checks
import 'package:flutter/material.dart';
import 'package:nasa_app/screens/detail/widget/custom_app_bar.dart';

import 'package:nasa_app/utils/data.dart';

import 'widget/course_description.dart';
import 'widget/various_courses.dart';

class Coursepage extends StatefulWidget {
  final List<Data> course;
  final String courseType;
  const Coursepage({
    Key? key,
    required this.course,
    required this.courseType,
  }) : super(key: key);

  @override
  State<Coursepage> createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  List<Data> all = [];
  List<Data> agriculture = [];
  List<Data> capacityBuilding = [];
  List<Data> climate = [];
  List<Data> disasters = [];
  List<Data> ecoForecasting = [];
  List<Data> healthAirQuality = [];
  List<Data> waterResources = [];

  @override
  void initState() {
    for (int i = 0; i < widget.course.length; i++) {
      if (widget.course[i].category == 'All') {
        all.add((widget.course[i]));
      } else if (widget.course[i].category == 'Agriculture') {
        agriculture.add((widget.course[i]));
      } else if (widget.course[i].category == 'Capacity Building') {
        capacityBuilding.add((widget.course[i]));
      } else if (widget.course[i].category == 'Climate') {
        climate.add((widget.course[i]));
      } else if (widget.course[i].category == 'Disasters') {
        disasters.add((widget.course[i]));
      } else if (widget.course[i].category == 'Eco Forecasting') {
        ecoForecasting.add((widget.course[i]));
      } else if (widget.course[i].category == 'Water Resources') {
        waterResources.add((widget.course[i]));
      } else {
        healthAirQuality.add((widget.course[i]));
      }
    }
    print('length of ${all.length}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(category: widget.courseType),
          CourseDescription(category: widget.courseType),
          VariousCourses(
            courseList: findingList(widget.courseType),
          )
        ],
      )),
    );
  }

  List<Data> findingList(String courseType) {
    if (courseType == 'All') {
      return all;
    } else if ('Agriculture' == courseType) {
      return agriculture;
    } else if ('Capacity Building' == courseType) {
      return capacityBuilding;
    } else if ('Climate' == courseType) {
      return climate;
    } else if ('Disasters' == courseType) {
      return disasters;
    } else if ('Eco Forecasting' == courseType) {
      return ecoForecasting;
    } else if ('Water Resources' == courseType) {
      return waterResources;
    }
    return healthAirQuality;
  }
}
