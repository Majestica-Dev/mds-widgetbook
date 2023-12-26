import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  int activeIndex1 = 0;
  int activeIndex2 = 0;
  int activeIndex3 = 0;

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              MDSTabBar(
                activeTabIndex: activeIndex1,
                tabs: const [
                  MDSTab(
                    child: Text('Category'),
                  ),
                  MDSTab(
                    child: Text('Category'),
                  ),
                  MDSTab(
                    child: Text('Category'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    activeIndex1 = value;
                  });
                },
              ),
              const SizedBox(height: 24),
              MDSTabBar(
                activeTabIndex: activeIndex2,
                tabs: const [
                  MDSTab(
                    child: Text('Category'),
                  ),
                  MDSTab(
                    child: Text('Category'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    activeIndex2 = value;
                  });
                },
              ),
              const SizedBox(height: 24),
              MDSTabBar(
                activeTabIndex: activeIndex3,
                tabs: const [
                  MDSTab(
                    child: Text('1'),
                  ),
                  MDSTab(
                    child: Text('2'),
                  ),
                  MDSTab(
                    child: Text('3'),
                  ),
                  MDSTab(
                    child: Text('4'),
                  ),
                  MDSTab(
                    child: Text('5'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    activeIndex3 = value;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
