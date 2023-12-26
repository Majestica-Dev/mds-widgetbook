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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Column(
            children: [
              MDSDotTabBar(
                items: [
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.orange,
                  ),
                  Container(
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
