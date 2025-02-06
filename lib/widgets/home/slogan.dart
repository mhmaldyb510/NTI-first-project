import 'package:first/constants.dart';
import 'package:flutter/material.dart';

class Slogan extends StatelessWidget {
  const Slogan({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
          text: TextSpan(
            text: 'Selling the ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Space Grotesk',
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'MOST POPULAR ',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              TextSpan(
                text: 'NFT is only here',
              ),
            ],
          ),
        );
  }
}