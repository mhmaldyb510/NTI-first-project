import 'package:first/models/collection_item_model.dart';
import 'package:first/widgets/collection/item_card.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  final List<CollectionItemModel> items;
  const ItemsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 148 / 178,
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) => ItemCard(
        image: items[index].image,
        title: items[index].title,
        number: items[index].number,
      ),
    );
  }
}
