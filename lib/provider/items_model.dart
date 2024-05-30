import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lessons/model/category.dart';

import '../model/item.dart';

class ItemModel with ChangeNotifier {
  String image = '';
  AudioPlayer player = AudioPlayer();
  bool isStopped = true;

  void initialData(Category category) {
    image = category.items[0].image;
    category.items.forEach((element) {
      element.active = false;
    });
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
    isStopped = true;
    while (isStopped) {
      for (var i = 0; i < category.items.length; i++) {
        if (isStopped) {
          var duration = await player.setAsset(category.items[i].audio);
          if (i != 0) {
            category.items[i - 1].active = false;
          }
          category.items[i].active = true;
          image = category.items[i].image;
          notifyListeners();
          player.play();
          await Future.delayed(duration!);
        }
      }
      category.items.forEach((element) {
        element.active = false;
      });
      notifyListeners();
    }
  }

  void stopPop() {
    isStopped = false;
    player.stop();
    notifyListeners();
  }

  void disposePlayer() async {
    isStopped = false;
    player.stop();
  }
}
