import 'package:flutter/material.dart';
import 'package:lessons/views/catgory_screen.dart';

import 'views/home_screen.dart';
import 'views/lesson_screen.dart';

class AppRoutes {
  static const String home = "/";
  static const String lesson = "/lesson";
  static const String category = "/category";
}

Map<String, WidgetBuilder> routes = {
  AppRoutes.home: (context) => const HomeScreen(),
  AppRoutes.lesson: (context) => const LessonScreen(),
  AppRoutes.category: (context) => const CategoryScreen(),
};
