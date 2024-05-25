import 'item.dart';

class Category {
  final String title;
  final String image;
  final List<Item> items;

  const Category({
    required this.title,
    required this.image,
    required this.items,
  });
}
