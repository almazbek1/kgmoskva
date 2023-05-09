import 'dart:math';

import 'package:flutter/material.dart';

void snackBar(BuildContext context, {required String msg,Color backgroundColor=Colors.green}) {

  final snackBar = SnackBar(
    content: Text(msg),
    backgroundColor: backgroundColor,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}



String getRandomString(int length) {
  const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(Random().nextInt(chars.length))));
}

String generateRandomString(int len) {
  var r = Random();
  const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
}