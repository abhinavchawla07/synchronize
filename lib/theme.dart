import 'package:flutter/material.dart';
import 'package:synchronize/constants.dart' as app_constants;

class AppTheme {
  static final ThemeData theme = ThemeData(
    colorSchemeSeed: app_constants.Colors.LAVENDER,
    appBarTheme: appBarTheme,
  );
  static const AppBarTheme appBarTheme = AppBarTheme(
    centerTitle: true,
    elevation: 0.0,
  );
}
