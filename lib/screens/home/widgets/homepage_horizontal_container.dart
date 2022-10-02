// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasa_app/utils/screen_size.dart';
import 'package:url_launcher/url_launcher.dart';

class CardContainer extends StatelessWidget {
  final title, course_type, difficulty, course_link, image;

  const CardContainer({
    Key? key,
    required this.course_type,
    required this.title,
    required this.difficulty,
    required this.course_link,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => urlLaunch(course_link),
      child: Container(
        width: useScreenWidth(280),
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade100,
            borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(
          horizontal: useScreenWidth(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: useScreenHeight(190),
              width: useScreenWidth(280),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.fill),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
            ),
            SizedBox(height: useScreenHeight(10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: useScreenWidth(10)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: useScreenHeight(10)),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Check(difficulty),
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        SizedBox(
                          width: useScreenWidth(7),
                        ),
                        Text(
                          difficulty,
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.access_alarm_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                        SizedBox(
                          width: useScreenWidth(5),
                        ),
                        const Text(
                          "40+ Hours",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: useScreenWidth(20),
                        ),
                        const Icon(
                          CupertinoIcons.globe,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }

  Future<void> urlLaunch(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch url';
    } else {
      Uri.parse(url);
    }
  }

  Color Check(String difficulty) {
    if (difficulty == "Introductory") {
      return Colors.green;
    } else if (difficulty == "Intermediate") {
      return Colors.yellow;
    }
    return Colors.red;
  }
}
