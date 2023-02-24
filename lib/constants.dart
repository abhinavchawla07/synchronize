import 'package:flutter/material.dart';
import 'package:synchronize/pages/home/home.dart';

class Constants {
  static const String title = "Synchronize";
  static final Map<String, WidgetBuilder> routes = {
    HomePage.pageRoute: (context) => const HomePage(),
  };
}
class Colors {
  static const Color GREEN = Color(0xFF5CA69A);
  static const Color LIGHT_GREEN = Color(0xFFD4FFAA);
  static const Color YELLOW_OCHRE = Color(0xFFE1AD5C);
  static const Color PEACHISH = Color(0xFFEFD4C5);
  static const Color ORANGE_1 = Color(0xFFE8AA5C);
  static const Color ORANGE_2 = Color(0xFFF8B545);
  static const Color ORANGISH = Color(0xFFFFBC90);
  static const Color DEEP_BLUE = Color(0xFF3B5478);
  static const Color TURQUOISE = Color(0xFF8FC0C9);
  static const Color LAVENDER = Color(0xFFD0C9F7);
  static const Color YELLOW = Color(0xFFFEFF74);
  static const Color LIGHT_BLUE = Color(0xFFC0EFFF);
}
