import 'package:flutter/material.dart';
import 'package:nasa_app/screens/home/widgets/random_image.dart';

class CustomAppBar extends StatelessWidget {
  final String category;

  const CustomAppBar({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child:
                    Image.asset(return_image(category), fit: BoxFit.fitHeight),
              ),
            ),
            Container(
              height: 20,
            )
          ],
        ),
        Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  onPressed: () => Navigator.of(context).pop()),
            )),
      ],
    );
  }
}
