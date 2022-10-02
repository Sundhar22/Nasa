// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class VerticalCardContainer extends StatelessWidget {
  final name;
  const VerticalCardContainer({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
