import 'package:flutter/material.dart';
import 'package:lessons/model/lesson.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final parameters = ModalRoute.of(context)!.settings.arguments as Lesson;
    return Scaffold(
      appBar: AppBar(
        title: Text(parameters.title),
      ),
      body: Column(
        children: [
          Text(
            "Choose a Category",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: parameters.categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey.withOpacity(0.5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.network(parameters.categories[index].image),
                      ),
                      Expanded(
                        child: Text(parameters.categories[index].title),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
