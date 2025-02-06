import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final double wight;
  const DashedDivider({
    super.key,
    this.wight = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
        wight ~/ 12,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 2.5),
          width: 5,
          height: 1,
          color: Color(0xff979796),
        ),
      ),
    );
  }
}
