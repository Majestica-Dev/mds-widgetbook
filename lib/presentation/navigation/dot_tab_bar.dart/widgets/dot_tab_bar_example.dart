import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class DotTabBarExample extends StatefulWidget {
  const DotTabBarExample({super.key});

  @override
  State<DotTabBarExample> createState() => _DotTabBarExampleState();
}

class _DotTabBarExampleState extends State<DotTabBarExample> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (activeIndex < 7) {
            activeIndex += 1;
          } else {
            activeIndex = 0;
          }
        });
      },
      child: ExampleDisplay(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MDSDotTabBar(
              activeTabindex: activeIndex,
              tabCount: 8,
            ),
          )
        ],
      ),
    );
  }
}
