import 'package:flutter/material.dart';

import 'views/home_screen.dart';
import 'views/lesson_screen.dart';

class AppRoutes {
  static const String home = "/";
  static const String lesson = "/lesson";
}

Map<String, WidgetBuilder> routes = {
  AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.lesson: (context) => LessonScreen(),
};
