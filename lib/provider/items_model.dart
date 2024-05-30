import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lessons/model/category.dart';

import '../model/item.dart';

class ItemModel with ChangeNotifier {
  String image = '';
  AudioPlayer player = AudioPlayer();
  List<String> audios = [];

  void initialData(Category category) {
    image = category.items[0].image;
    audios = category.items.map((element) {
      return element.audio;
    }).toList();
  }

  void changeActive(Item item) {
    item.active = !(item.active!);
    notifyListeners();
  }

  void clickItem(Category category, Item item) {
    image = item.image;
    player.setAsset(item.audio);
    player.play();
    category.items.forEach((item) {
      item.active = false;
    });
    item.active = true;
    notifyListeners();
  }

  void playAll(Category category) async {
    // Default Way
    final playlist = ConcatenatingAudioSource(
      children: List.generate(
        audios.length,
        (index) {
          return AudioSource.asset(audios[index]);
        },
      ),
    );

    await player.setAudioSource(
      playlist,
      initialIndex: 0,
      initialPosition: Duration.zero,
    );
    player.play();
  }
}
