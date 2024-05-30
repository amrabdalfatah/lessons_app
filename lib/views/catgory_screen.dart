import 'package:flutter/material.dart';
import 'package:lessons/model/category.dart';
import 'package:lessons/provider/items_model.dart';
import 'package:lessons/views/widgets/item.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {
  final Category category;
  const CategoryScreen({
    super.key,
    required this.category,
  });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    Provider.of<ItemModel>(context, listen: false).initialData(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Provider.of<ItemModel>(context, listen: false).disposePlayer();
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(widget.category.title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    Provider.of<ItemModel>(context, listen: false).playAll(
                      widget.category,
                    );
                  },
                  child: const Text("Play All"),
                ),
                PopupMenuItem(
                  onTap: () {
                    Provider.of<ItemModel>(context, listen: false).stopPop();
                  },
                  child: const Text("Stop"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Image.network(
              Provider.of<ItemModel>(context).image,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var item = widget.category.items[index];
                return ItemWidget(
                  title: item.title,
                  isActive: item.active!,
                  playSound: () {
                    Provider.of<ItemModel>(context, listen: false).clickItem(
                      widget.category,
                      item,
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: widget.category.items.length,
            ),
          ),
        ],
      ),
    );
  }
}
