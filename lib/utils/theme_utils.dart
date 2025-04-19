import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> toggleTheme(BuildContext context, ThemeMode currentTheme) async {
  final newTheme =
      currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  // Persist theme preference
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('themeMode', newTheme.toString().split('.')[1]);
}
