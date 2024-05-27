import 'package:flutter/material.dart';

import '../data/all_data.dart';
import 'widgets/lesson.dart';

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
          child: ListView.builder(
            itemBuilder: (context, index) {
              return LessonItem(
                lesson: lessons[index],
              );
            },
            // separatorBuilder: (context, index) {
            //   return const SizedBox(
            //     height: 16,
            //   );
            // },
            itemCount: lessons.length,
          ),
        ),
      ),
    );
  }
}
