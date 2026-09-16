import 'package:flutter/material.dart';


class AppTheme{

  // colors:
  static const Color primaryColor=Colors.blue;
  static const Color textColor=Colors.red;
  static const Color hintColor=Colors.grey;

//   Theme:
static ThemeData theme=ThemeData(
  primaryColor:primaryColor,


//   text design :
textTheme: const TextTheme(

  headlineLarge:TextStyle(
    color: textColor,
    fontSize: 30,
    fontWeight: FontWeight.bold
  ),
  bodyLarge:TextStyle(
    fontSize:18,
    color:hintColor,
  ),
),

);
}