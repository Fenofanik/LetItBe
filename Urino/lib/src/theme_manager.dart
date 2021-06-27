import 'package:flutter/material.dart';
import 'package:urino/src/app_color.dart';
import 'package:urino/src/text_styles.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
      backgroundColor: background,
      scaffoldBackgroundColor: background,
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
        shadowColor: transparentColors,
        elevation: 0,
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: transparentColors,
        titleTextStyle: appBarText,
        actionsIconTheme: IconThemeData(
          color:blackColors,
          size: 30,
        ),
        textTheme: TextTheme(
            headline6: appBarText
        ),
      ),
    );
}