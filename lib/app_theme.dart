import 'package:flutter/material.dart';

class AppTheme{
  static Color PrimaryColor = Color(0xFF39A552);
  static Color mavyColor = Color(0xFF171616);
  static Color text = Color(0xFFFCFBFB);


  static ThemeData ligthTheme = ThemeData(
      appBarTheme : AppBarTheme(
        foregroundColor: AppTheme.text,
  backgroundColor:  PrimaryColor,
  titleTextStyle:  TextStyle(color:Colors.white,
  fontSize: 22,
    fontWeight: FontWeight.w400,
    //color: PrimaryColor,
  )
      ),
  textTheme: TextTheme(bodySmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
  color: mavyColor,
  ),
  bodyMedium: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w400,
  color: text,
  )
));
}