import 'package:first/constants.dart';
import 'package:first/views/collection/collection_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class BestArtist extends StatelessWidget {
  const BestArtist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Best Artist',
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
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CollectionView(),
            ),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  'assets/images/cat.png',
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Darlene Robertson',
                    style: kPrimaryTextStyle,
                  ),
                  Text(
                    '125k Followers',
                    style: kSecondaryTextStyle,
                  )
                ],
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                ),
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
