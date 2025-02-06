import 'package:first/constants.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  const Category({
    super.key,
    this.title = '',
    this.backgroundColor = const Color(0xffF8F8F8),
    this.textColor = kSecondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: Color(0xffF0F0F0),
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 9,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
