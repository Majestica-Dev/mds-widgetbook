import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class DotTabBarExample extends StatefulWidget {
  const DotTabBarExample({super.key});

  @override
  State<DotTabBarExample> createState() => _DotTabBarExampleState();
}

class _DotTabBarExampleState extends State<DotTabBarExample> {
  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: MDSDotTabBar(
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
      ),
    );
  }
}
