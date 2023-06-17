import 'package:flutter/material.dart';

class AppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    _instance ??= AppTheme._init();
    return _instance!;
  }

  AppTheme._init();

  ThemeData get darkTheme => ThemeData.dark(useMaterial3: true).copyWith();

  ThemeData get lightTheme => ThemeData.light().copyWith();
}
