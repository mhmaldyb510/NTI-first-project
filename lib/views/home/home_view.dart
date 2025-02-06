import 'package:first/constants.dart';
import 'package:first/views/details/details_view.dart';
import 'package:first/widgets/home/best_artist.dart';
import 'package:first/widgets/home/category_list.dart';
import 'package:first/widgets/home/slogan.dart';
import 'package:first/widgets/home/top_collection.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 24,
        ),
        const Slogan(),
        SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 36,
          child: CategoryList(),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Text(
              'Top Collection 🔥',
              style: kPrimaryTextStyle,
            ),
            Spacer(),
            Icon(
              IconsaxPlusLinear.more,
              color: kSecondaryColor,
              size: 25,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsView(),
              ),
            );
          },
          child: TopCollection(),
        ),
        SizedBox(
          height: 24,
        ),
        BestArtist()
      ],
    );
  }
}
