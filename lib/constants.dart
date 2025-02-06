import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const kPrimaryColor = Color(0xffA3D80D);

const kSecondaryColor = Color(0xff979796);

const kPrimaryTextStyle = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold,
  fontFamily: 'Space Grotesk',
);

const kSecondaryTextStyle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w400,
  color: kSecondaryColor,
);

final kLeadingStyle = IconButton.styleFrom(
  backgroundColor: Color.fromRGBO(246, 251, 231, 0.35),
);

final kEthIcon = SvgPicture.asset(
  'assets/icons/eth.svg',
);
