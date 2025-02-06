import 'package:first/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CollectionAppBar extends StatelessWidget {
  const CollectionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        style: kLeadingStyle,
        icon: Icon(IconsaxPlusLinear.arrow_left_1),
      ),
      centerTitle: true,
      title: Text(
        'Collection',
        style: kPrimaryTextStyle,
      ),
    );
  }
}
