import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasa_app/screens/home/widgets/horizontal_title.dart';
import 'package:nasa_app/utils/data.dart';
import 'package:nasa_app/utils/screen_size.dart';

import 'widgets/display_courses.dart';
import 'widgets/homepage_horizontal_container.dart';
import 'widgets/homepage_textfield.dart';
import 'widgets/homepage_vertical_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Data> trendingData = [];
  var rng = Random();
  @override
  void initState() {
    for (var i = 0; i < 8; i++) {
      trendingData.add(allData[(rng.nextInt(allData.length))]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List category = [
      'All',
      'Agriculture',
      'Capacity Building',
      'Climate',
      'Disasters',
      'Eco Forecasting',
      'Health & Air Quality',
      'Water Resources',
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          drawer: _drawer(),
          appBar: _appBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageTextField(),
                HorizontalTitle(
                  lefttitle: "Trending Resources",
                  buttontitle: "View All",
                  page_route: DisplayCourses(
                      category: trendingData, appBarTittle: 'Trending '),
                ),
                SizedBox(
                  height: useScreenHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: SizedBox(
                    height: useScreenHeight(320),
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CardContainer(
                          course_type: trendingData[index].type,
                          title: trendingData[index].title,
                          difficulty: trendingData[index].level,
                          course_link: trendingData[index].link,
                          image: trendingData[index].image,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: useScreenHeight(20),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: useScreenHeight(420),
                  child: ListView.builder(
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return HomePageVerticalCard(
                        courseData: allData,
                        category: category[index],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.greenAccent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('User Profile'),
              TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) =>
                          const Center(child: CircularProgressIndicator()),
                    );
                  },
                  child: const Text('Your total Super coins 🪙'))
            ],
          ),
        ),
        ListTile(
          title: const Text(
            'Logout',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            setState(() {
              FirebaseAuth.instance.signOut();
            });
          },
        )
      ]),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black87,
      title: const Text(
        "Hey buddy, Fire Up!",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: useScreenWidth(18), vertical: useScreenHeight(5)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            color: Colors.blueAccent,
            onPressed: () => {},
            icon: const Icon(
              CupertinoIcons.rocket,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
