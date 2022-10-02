import 'package:flutter/material.dart';

import '../../../utils/data.dart';

class CourseDescription extends StatelessWidget {
  final String category;

  const CourseDescription({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/nasa_logo.png",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "NASA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black12)),
                const Icon(
                  Icons.access_time_filled,
                  size: 20,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "90+ days",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
              category,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 15),
            Text(topicdesc[category]!,
                style: const TextStyle(
                    wordSpacing: 2, fontSize: 16, color: Colors.grey))
          ],
        ));
  }
}
