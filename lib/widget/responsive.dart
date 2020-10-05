import 'package:flutter/material.dart';

class Responsive {
  static MediaQueryData _mediaQueryData;
  static double _width;
  static double _height;
  static double horizontal;
  static double vertical;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _width = _mediaQueryData.size.width;
    _height = _mediaQueryData.size.height;
    horizontal = _height / 100;
    vertical = _width / 100;
  }
}
