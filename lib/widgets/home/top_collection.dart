import 'package:first/constants.dart';
import 'package:first/widgets/home/custom_button.dart';
import 'package:first/helpers/dashed_divider.dart';
import 'package:first/widgets/home/image_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class TopCollection extends StatelessWidget {
  const TopCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageContainer(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  'Hypebest Apes G',
                  style: kPrimaryTextStyle,
                ),
                Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Ends in',
                      style: kSecondaryTextStyle,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          IconsaxPlusLinear.clock_1,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '1h 23m 32s',
                          style: kPrimaryTextStyle,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          DashedDivider(
            wight: MediaQuery.sizeOf(context).width - 40,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Highest Bid Today',
                      style: TextStyle(
                        color: kSecondaryColor,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        kEthIcon,
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '2.23 ETH',
                          style: kPrimaryTextStyle,
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                CustomButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
