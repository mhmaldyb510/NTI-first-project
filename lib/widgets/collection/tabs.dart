import 'package:first/constants.dart';
import 'package:first/models/collection_item_model.dart';
import 'package:first/widgets/collection/items_list.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    List<CollectionItemModel> items = [
      CollectionItemModel(
        image: 'assets/images/monkey2.png',
        title: 'Hypebest Apes B',
        number: 14415,
      ),
      CollectionItemModel(
        image: 'assets/images/monkey3.png',
        title: 'Hypebest Apes D',
        number: 15315,
      ),
      CollectionItemModel(
        image: 'assets/images/monkey.png',
        title: 'Hypebest Apes G',
        number: 18417,
      ),
      CollectionItemModel(
        image: 'assets/images/monkey4.png',
        title: 'Hypebest Apes P',
        number: 12414,
      ),
    ];
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            dividerHeight: 0,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            indicatorColor: kPrimaryColor.withAlpha(140),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Space Grotesk'),
            unselectedLabelColor: kSecondaryColor,
            tabs: [
              Tab(
                text: 'Item\'s',
              ),
              Tab(
                text: 'Activity',
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height - 550,
            child: TabBarView(
              children: [
                ItemsList(items: items),
                Text('Activity'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
