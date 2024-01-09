import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class BottomNavBarExample extends StatefulWidget {
  const BottomNavBarExample({super.key});

  @override
  State<BottomNavBarExample> createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.mdsTheme.colors.surface;
    return ExampleDisplay(
      body: Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: MDSBottomNavBar(
          currentIndex: currentIndex,
          onSelect: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            MDSBottomNavBarItem(
              icon: PhosphorIcon(
                PhosphorIcons.alien(
                  PhosphorIconsStyle.fill,
                ),
              ),
              label: 'Home',
            ),
            MDSBottomNavBarItem(
              icon: PhosphorIcon(
                PhosphorIcons.coins(
                  PhosphorIconsStyle.fill,
                ),
              ),
              label: 'Invest',
            ),
            MDSBottomNavBarItem(
              icon: PhosphorIcon(
                PhosphorIcons.moped(PhosphorIconsStyle.fill),
              ),
              label: 'Transfers',
            ),
            MDSBottomNavBarItem(
              icon: PhosphorIcon(
                PhosphorIcons.aperture(
                  PhosphorIconsStyle.fill,
                ),
              ),
              label: 'Crypto',
            ),
          ],
        ),
      ),
    );
  }
}
