import 'package:first/constants.dart';
import 'package:first/widgets/collection/banner_section.dart';
import 'package:first/widgets/collection/profile_info.dart';
import 'package:first/widgets/collection/profile_values.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BannerSection(),
        SizedBox(
          height: 36,
        ),
        ProfileInfo(),
        SizedBox(
          height: 16,
        ),
        ProfileValues(),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Watchlist',
                    style: kPrimaryTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  )
                ],
              ),
            ),
            Icon(
              IconsaxPlusLinear.more,
              color: kSecondaryColor,
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
