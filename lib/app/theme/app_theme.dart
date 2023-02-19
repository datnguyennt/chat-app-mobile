import 'package:flutter/material.dart';
import 'package:get/get.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);

class ThemeController extends GetxController {
  final ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  bool _isDarkTheme = false;
  bool get isDarkTheme => _isDarkTheme;
  tongleTheme(bool isDark) {
    Get.changeTheme(isDark ? darkTheme : lightTheme);
    _isDarkTheme = isDark;
    update();
  }
}
