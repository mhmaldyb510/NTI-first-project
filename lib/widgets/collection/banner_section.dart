import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: double.infinity,
          height: 117,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            'assets/images/Banner.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          bottom: -28,
          right: (MediaQuery.of(context).size.width / 2) - 71,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 51,
            child: CircleAvatar(
              radius: 95 / 2,
              backgroundImage: AssetImage(
                'assets/images/cat_fall.png',
              ),
            ),
          ),
        )
      ],
    );
  }
}
