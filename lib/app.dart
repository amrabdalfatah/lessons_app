import 'package:flutter/material.dart';
import 'package:lessons/provider/items_model.dart';
import 'package:lessons/routes.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemModel(),
      child: MaterialApp(
        title: 'Lessons',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.home,
        routes: routes,
      ),
    );
  }
}
