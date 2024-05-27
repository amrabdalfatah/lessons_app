import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback playSound;
  const ItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.playSound,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: SizedBox(
          height: 300,
          child: Column(
            children: [
              Expanded(
                child: Image.network(image),
              ),
              ListTile(
                tileColor: Colors.orange,
                onTap: playSound,
                title: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                      ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
