import 'package:first/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Darlene Robertson ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              IconsaxPlusBold.verify,
              color: Colors.blue,
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.',
          style: kSecondaryTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
