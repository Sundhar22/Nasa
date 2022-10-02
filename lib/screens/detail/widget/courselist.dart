import 'package:flutter/material.dart';
import 'package:nasa_app/utils/data.dart';
import 'package:nasa_app/utils/screen_size.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseList extends StatelessWidget {
  final List<Data> module;

  const CourseList({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 25,
      ),
      itemCount: module.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            GestureDetector(
              onTap: () => urlLaunch(module[index].link),
              child: Container(
                width: useScreenWidth(310),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade100, width: 2),
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            module[index].title,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      module[index].description,
                      // maxLines: 1,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                            Icons.category_outlined, module[index].level),
                        _buildButton(Icons.arrow_forward_ios_outlined, '')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Container _buildButton(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.green.shade200, borderRadius: BorderRadius.circular(2)),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.green.shade800,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.green.shade900, fontWeight: FontWeight.bold),
          ),
        ],
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
}
