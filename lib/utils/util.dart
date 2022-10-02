import 'package:flutter/material.dart';

class Utils {
  
  static final  messenger = GlobalKey<ScaffoldMessengerState>();
  static showSnack(String? txt) {
    if (txt == null) return;
    final snackBar = SnackBar(
      content: Text(txt),
      backgroundColor: Colors.redAccent,
    );
    messenger.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
