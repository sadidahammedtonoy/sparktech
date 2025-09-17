import 'package:flutter/material.dart';
import 'package:sparktech/App/appColors.dart';

class CustomThemeApp {
  static ThemeData get Theme {
    return ThemeData(
        scaffoldBackgroundColor: appcolors.appBackground,
        appBarTheme: AppBarTheme(backgroundColor: appcolors.appBackground,
        scrolledUnderElevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white.withOpacity(0.3),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.3),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.3),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: appcolors.primary,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
    );
  }

}