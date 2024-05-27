import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lessons/model/category.dart';
import 'package:lessons/views/widgets/item.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var item = category.items[index];
          return ItemWidget(
            image: item.image,
            title: item.title,
            playSound: () {
              player.setReleaseMode(ReleaseMode.stop);
              // Start the player as soon as the app is displayed.
              WidgetsBinding.instance.addPostFrameCallback((_) async {
                await player.setSource(AssetSource(item.audio));
                await player.resume();
              });
            },
          );
        },
        itemCount: category.items.length,
      ),
    );
  }
}
