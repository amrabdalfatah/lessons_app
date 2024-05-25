import 'package:flutter/material.dart';
import 'package:lessons/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lessons',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: routes,
    );
  }
}
