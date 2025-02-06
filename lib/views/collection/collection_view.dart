import 'package:first/widgets/collection/collection_app_bar.dart';
import 'package:first/widgets/collection/profile_section.dart';
import 'package:first/widgets/collection/tabs.dart';
import 'package:flutter/material.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
          top: 20,
        ),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            CollectionAppBar(),
            SizedBox(
              height: 24,
            ),
            ProfileSection(),
            Tabs(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withAlpha(170),
              blurRadius: 66,
              spreadRadius: 66,
            ),
          ],
        ),
      ),
    );
  }
}
