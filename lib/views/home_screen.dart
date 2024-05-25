import 'package:flutter/material.dart';
import 'package:lessons/routes.dart';

import '../data/all_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: Colors.orange,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.lesson,
                    arguments: lessons[index],
                  );
                },
                title: Text(
                  lessons[index].title,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: lessons.length,
          ),
        ),
      ),
    );
  }
}
