// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';

import 'package:nasa_app/utils/data.dart';
import 'package:nasa_app/utils/screen_size.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class DisplayCourses extends StatelessWidget {
  final List<Data> category;
  String? appBarTittle;
  DisplayCourses({
    Key? key,
    required this.category,
    required this.appBarTittle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var separation;
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 45),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () => {Navigator.pop(context)},
              ),
              const SizedBox(
                width: 25,
              ),
              Text(
                "$appBarTittle Intellectuals  🚀 ",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: useScreenHeight(650),
            child: ListView.builder(
              itemCount: category.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => urlLaunch(category[index].link),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black26,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(category[index].image),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: useScreenWidth(10),
                          ),
                          Text(
                            category[index].title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }

  Future<void> urlLaunch(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch url';
    } else {
      Uri.parse(url);
    }
  }
}
