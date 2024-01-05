import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/example_screens/screens/checkout_screen.dart';
import 'package:mds_widget_book/presentation/example_screens/screens/home_screen.dart';
import 'package:mds_widget_book/presentation/example_screens/screens/love_screen.dart';
import 'package:mds_widget_book/presentation/example_screens/screens/settings_screen.dart';

class ExampleNavBarScreen extends StatefulWidget {
  const ExampleNavBarScreen({super.key});

  @override
  State<ExampleNavBarScreen> createState() => _ExampleNavBarScreenState();
}

class _ExampleNavBarScreenState extends State<ExampleNavBarScreen> {
  int navBarIndex = 0;

  static const _screens = [
    SettingsScreen(),
    HomeScreen(),
    CheckoutScreen(),
    LoveScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
        child: _screens[navBarIndex],
      ),
      bottomNavigationBar: MDSBottomNavBar(
        currentIndex: navBarIndex,
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
        onSelect: (v) {
          setState(
            () {
              navBarIndex = v;
            },
          );
        },
      ),
    );
  }
}
