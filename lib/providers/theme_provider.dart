import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<ThemeState, ThemeMode>((_) {
  return ThemeState();
});

class ThemeState extends StateNotifier<ThemeMode> {
  ThemeState() : super(ThemeMode.system);

  set darkEnabled(bool value) => state = value ? ThemeMode.dark : ThemeMode.light;
  get isDarkEnabled => state == ThemeMode.dark;
}
