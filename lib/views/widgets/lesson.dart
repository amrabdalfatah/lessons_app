import 'package:flutter/material.dart';
import 'package:lessons/model/lesson.dart';
import 'package:lessons/routes.dart';

class LessonItem extends StatelessWidget {
  final Lesson lesson;
  const LessonItem({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.orange,
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.lesson,
              arguments: lesson,
            );
          },
          title: Text(
            lesson.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
