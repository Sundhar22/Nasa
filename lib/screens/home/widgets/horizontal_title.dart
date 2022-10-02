// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

class HorizontalTitle extends StatelessWidget {
  final lefttitle, buttontitle, page_route;
  const HorizontalTitle({
    Key? key,
    required this.lefttitle,
    required this.buttontitle,
    required this.page_route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lefttitle,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page_route));
            },
            child: Text(
              buttontitle,
            ),
          )
        ],
      ),
    );
  }
}
