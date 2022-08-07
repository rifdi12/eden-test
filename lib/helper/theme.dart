import 'package:eden_farm/helper/color.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  Map<int, Color> color = const {
    50: Color.fromRGBO(0, 174, 239, .1),
    100: Color.fromRGBO(0, 174, 239, .2),
    200: Color.fromRGBO(0, 174, 239, .3),
    300: Color.fromRGBO(0, 174, 239, .4),
    400: Color.fromRGBO(0, 174, 239, .5),
    500: Color.fromRGBO(0, 174, 239, .6),
    600: Color.fromRGBO(0, 174, 239, .7),
    700: Color.fromRGBO(0, 174, 239, .8),
    800: Color.fromRGBO(0, 174, 239, .9),
    900: Color.fromRGBO(0, 174, 239, 1),
  };
  MaterialColor colorTheme = MaterialColor(0xFF95adfe, color);
  return ThemeData(
    primarySwatch: colorTheme,
    fontFamily: "OpenSans",
    scaffoldBackgroundColor: const Color(0xffececec),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: ColorHelper.gray01.withOpacity(.1),
        filled: true,
        hintStyle: TextStyle(fontSize: 12, color: ColorHelper.gray01),
        prefixIconColor: ColorHelper.gray01.withOpacity(.5),
        border: InputBorder.none),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: colorTheme,
        unselectedItemColor: Colors.grey),
    appBarTheme: AppBarTheme(
      actionsIconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: ColorHelper.purple,
      elevation: 0,
      titleTextStyle: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
    ),
  );
}
