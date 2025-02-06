import 'package:flutter/material.dart';

class VerticalDashedDivider extends StatelessWidget {
  final double height;
  const VerticalDashedDivider({
    super.key,
    this.height = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        height ~/ 12,
        (index) => Container(
          margin: EdgeInsets.symmetric(vertical: 2.5),
          height: 5,
          width: 1,
          color: Color(0xff979796),
        ),
      ),
    );
  }
}
