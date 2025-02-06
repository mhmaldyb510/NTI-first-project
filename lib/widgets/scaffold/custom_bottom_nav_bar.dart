import 'package:first/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CustomBottomNavBar extends StatefulWidget {
  final ValueChanged<int>? onTap;
  const CustomBottomNavBar({
    super.key,
    this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _index,
      onTap: (value) {
        setState(() {
          _index = value;
          widget.onTap?.call(_index);
        });
      },
      selectedItemColor: Colors.black,
      unselectedItemColor: kSecondaryColor,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            _index == 0 ? IconsaxPlusBold.home_2 : IconsaxPlusLinear.home_2,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconsaxPlusLinear.search_normal_1,
          ),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _index == 2 ? IconsaxPlusBold.save_2 : IconsaxPlusLinear.save_2,
          ),
          label: 'save',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            _index == 3 ? IconsaxPlusBold.profile : IconsaxPlusLinear.profile,
          ),
          label: 'profile',
        )
      ],
    );
  }
}
