import 'package:first/views/home/home_view.dart';
import 'package:first/widgets/scaffold/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  final List<Widget> bodies = [
    HomeView(),
    Center(child: Text('Search')),
    Center(child: Text('Saved')),
    Center(child: Text('Profile')),
  ];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: bodies[_selectedItem],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (value) {
          setState(() {
            _selectedItem = value;
          });
        },
      ),
    );
  }
}
