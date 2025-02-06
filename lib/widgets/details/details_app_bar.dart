import 'package:first/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
     build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          style: kLeadingStyle,
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            IconsaxPlusLinear.arrow_left_1,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Details',
          style: kPrimaryTextStyle,
        ),
      );
  }
}