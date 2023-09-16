import 'package:flutter/material.dart';

const colorBlack = Color.fromRGBO(48, 47, 48, 1.0);
const colorGrey = Color.fromRGBO(141, 141, 141, 1.0);
const sage = Color.fromRGBO(148, 166, 132,1);
const pink = Color.fromRGBO(255, 238, 244,1);
const green = Color(0xffAEC3AE);
const vintage = Color(0xffE4E4D0);
const colorWhite = Colors.white;
// App bar theme
const AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: colorWhite,
    elevation: 0 ,
    titleTextStyle: TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 26),

);

// Default Text theme
const TextTheme textThemeDefault = TextTheme(
    displayLarge:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 26),
    displayMedium:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
    displaySmall:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
    headlineMedium:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 16),
    headlineSmall:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
    titleLarge:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
    bodyLarge: TextStyle(
        color: colorBlack,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyMedium: TextStyle(
        color: colorGrey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    titleMedium:
    TextStyle(color: colorBlack, fontSize: 12, fontWeight: FontWeight.w400),
    titleSmall:
    TextStyle(color: colorGrey, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme textThemeSmall = TextTheme(
    displayLarge:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 22),
    displayMedium:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 20),
    displaySmall:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 18),
    headlineMedium:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 14),
    headlineSmall:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 12),
    titleLarge:
    TextStyle(color: colorBlack, fontWeight: FontWeight.w700, fontSize: 10),
    bodyLarge: TextStyle(
        color: colorBlack,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyMedium: TextStyle(
        color: colorGrey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        wordSpacing: 5.5,
        height: 1.5),
    titleMedium:
    TextStyle(color: colorBlack, fontSize: 10, fontWeight: FontWeight.w400),
    titleSmall:
    TextStyle(color: colorGrey, fontSize: 10, fontWeight: FontWeight.w400));