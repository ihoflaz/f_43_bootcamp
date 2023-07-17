import 'package:flutter/material.dart';

final Color kbackgroundColor = Color(0xFFFFFFFF);
final Color kAccentOrangeColor = Color(0xFFFFE3D3);
final Color kAccentBlueColor = Color(0xFFE7F6FF);
final Color kAccentPinkColor = Color(0xFFFFE8EC);
final Color kAccentYellowColor = Color(0xFFFFFACA);
final Color kAccentPurpleColor = Color(0xFFEEE5FF);

final Color kDefaultTextColor = Colors.black54;
final Color kDarkTextColor = Colors.white;

class AppTheme {
static ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  hintColor: Colors.black,
  dividerColor: Colors.white54,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    headline3: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    headline5: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
    headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
    subtitle1: TextStyle(fontSize: 16, color: Colors.black),
    subtitle2: TextStyle(fontSize: 14, color: Colors.black),
    bodyText1: TextStyle(fontSize: 16, color: Colors.black),
    bodyText2: TextStyle(fontSize: 14, color: Colors.black),
    caption: TextStyle(fontSize: 12, color: Colors.black),
    overline: TextStyle(fontSize: 10, color: Colors.black),
    button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    // Diğer metin stillerini buraya ekleyebilirsiniz
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
);

static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    hintColor: Colors.white,
    dividerColor: Colors.black12,

  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    headline3: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    headline5: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
    headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
    subtitle1: TextStyle(fontSize: 16, color: Colors.white),
    subtitle2: TextStyle(fontSize: 14, color: Colors.white),
    bodyText1: TextStyle(fontSize: 16, color: Colors.white),
    bodyText2: TextStyle(fontSize: 14, color: Colors.white),
    caption: TextStyle(fontSize: 12, color: Colors.white),
    overline: TextStyle(fontSize: 10, color: Colors.white),
    button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  ),
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.black,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
);
}


