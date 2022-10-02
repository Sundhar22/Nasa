import 'package:flutter/material.dart';
import '../../../utils/data.dart';
import 'ai_search.dart';
import 'display_courses.dart';

class HomePageTextField extends StatefulWidget {
  HomePageTextField({Key? key}) : super(key: key);

  @override
  State<HomePageTextField> createState() => _HomePageTextFieldState();
}

class _HomePageTextFieldState extends State<HomePageTextField> {
  List<Data> agriculture = [];

  List<Data> climate = [];

  List<Data> waterResources = [];

  List<Data> disasters = [];

  List<Data> ecoForecasting = [];

  List<Data> all = [];

  List<Data> capacityBuilding = [];

  List<Data> healthAirQuality = [];
  @override
  void initState() {
    for (int i = 0; i < allData.length; i++) {
      if (allData[i].category == 'All') {
        all.add((allData[i]));
      } else if (allData[i].category == 'Agriculture') {
        agriculture.add((allData[i]));
      } else if (allData[i].category == 'Capacity Building') {
        capacityBuilding.add((allData[i]));
      } else if (allData[i].category == 'Climate') {
        climate.add((allData[i]));
      } else if (allData[i].category == 'Disasters') {
        disasters.add((allData[i]));
      } else if (allData[i].category == 'Eco Forecasting') {
        ecoForecasting.add((allData[i]));
      } else if (allData[i].category == 'Water Resources') {
        waterResources.add((allData[i]));
      } else {
        healthAirQuality.add((allData[i]));
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        onSubmitted: (value) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DisplayCourses(
                        category: findingList(return_intrest(value)),
                        appBarTittle: '',
                      )));
        },
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              borderSide: BorderSide(width: 3, color: Colors.blueGrey),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            prefixIcon: const Icon(Icons.search),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[600]),
            hintText: "Search courses",
            fillColor: Colors.white),
      ),
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
    } else if ('Health & Air Quality' == courseType) {
      return healthAirQuality;
    }
    return allData;
  }
}
