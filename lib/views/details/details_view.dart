import 'package:first/constants.dart';
import 'package:first/widgets/details/details_app_bar.dart';
import 'package:first/widgets/home/custom_button.dart';
import 'package:first/helpers/dashed_divider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.sizeOf(context).width,
          100,
        ),
        child: DetailsAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: ListView(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Image.asset(
                'assets/images/monkey2.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              '#14415',
              style: kPrimaryTextStyle.copyWith(
                color: kPrimaryColor,
              ),
            ),
            Row(
              children: [
                Text(
                  'Hypebest Apes B',
                  style: kPrimaryTextStyle,
                ),
                Spacer(),
                Icon(IconsaxPlusLinear.crown_1)
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  '125 Sold',
                  style: kSecondaryTextStyle,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  IconsaxPlusLinear.clock_1,
                  size: 16,
                  color: kSecondaryColor,
                ),
                Text(
                  ' 1h 23mm 32s',
                  style: kSecondaryTextStyle,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: DashedDivider(
                wight: MediaQuery.sizeOf(context).width,
              ),
            ),
            Text(
              'Description',
              style: kPrimaryTextStyle,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Each Apes NFT is a unique masterpiece, and crafted by artists around the globe',
              style: kSecondaryTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: MediaQuery.sizeOf(context).width,
        height: 100,
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  'Price',
                  style: kSecondaryTextStyle,
                ),
                Text(
                  '2.23 ETH',
                  style: kPrimaryTextStyle,
                )
              ],
            ),
            Spacer(),
            SizedBox(
              width: 150,
              height: 50,
              child: CustomButton(),
            )
          ],
        ),
      ),
    );
  }
}
