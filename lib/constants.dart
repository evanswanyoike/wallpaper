import 'package:flutter/material.dart';

Color wnb(BuildContext context) {
  if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
    return Colors.white;
  } else if (MediaQuery.of(context).platformBrightness == Brightness.light) {
    return Colors.black;
  } else {
    return Theme.of(context).primaryColor;
  }
}

TextStyle wnbtx(BuildContext context) {
  if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
    return const TextStyle(color: Colors.white);
  } else {
    return const TextStyle(color: Colors.black);
  }
}
