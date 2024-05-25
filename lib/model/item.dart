import 'package:audioplayers/audioplayers.dart';

class Item {
  final String title;
  final String image;
  final AudioPlayer audio;

  const Item({
    required this.title,
    required this.image,
    required this.audio,
  });
}
