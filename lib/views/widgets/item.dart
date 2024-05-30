import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback playSound;
  final bool isActive;
  const ItemWidget({
    super.key,
    required this.title,
    required this.playSound,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isActive ? Colors.orange : Colors.grey,
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
    );
  }
}
