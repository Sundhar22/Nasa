import 'package:flutter/cupertino.dart';

class ScreenSize {
  static late MediaQueryData mediaQuery;
  static late double screenWidth;
  static late double screenHight;

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenHight = mediaQuery.size.height;
    screenWidth = mediaQuery.size.width;
  }
}

double useScreenHeight(double input) {
  return (input / 812) * ScreenSize.screenHight;
}

double useScreenWidth(double input) {
  return (input / 375) * ScreenSize.screenWidth;
}
