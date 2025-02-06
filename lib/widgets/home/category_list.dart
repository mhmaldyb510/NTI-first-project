import 'package:first/constants.dart';
import 'package:first/widgets/home/category.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Category(
          title: 'Trending',
          textColor: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        Category(
          title: 'By Artist',
        ),
        Category(
          title: 'ETH',
        ),
        Category(
          title: 'BTC',
        ),
      ],
    );
  }
}
