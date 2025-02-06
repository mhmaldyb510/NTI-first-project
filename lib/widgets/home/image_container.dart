import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          clipBehavior: Clip.antiAlias,
          height: 187,
          width: 311,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                20,
              ),
            ),
          ),
          child: Image.asset(
            'assets/images/image.png',
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
        );
  }
}