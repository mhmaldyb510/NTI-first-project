import 'package:first/constants.dart';
import 'package:first/helpers/vertical_dashed_divider.dart';
import 'package:flutter/material.dart';

class ProfileValues extends StatelessWidget {
  const ProfileValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '10.0K',
                  style: kPrimaryTextStyle,
                ),
                Text(
                  'Items',
                  style: kSecondaryTextStyle,
                )
              ],
            ),
            VerticalDashedDivider(
              height: 40,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    kEthIcon,
                    Text(
                      '689.10K',
                      style: kPrimaryTextStyle,
                    ),
                  ],
                ),
                Text(
                  'Volume',
                  style: kSecondaryTextStyle,
                ),
              ],
            ),
            VerticalDashedDivider(
              height: 40,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    kEthIcon,
                    Text(
                      '13.99',
                      style: kPrimaryTextStyle,
                    ),
                  ],
                ),
                Text(
                  'Floor Price',
                  style: kSecondaryTextStyle,
                ),
              ],
            ),
          ],
        );
  }
}