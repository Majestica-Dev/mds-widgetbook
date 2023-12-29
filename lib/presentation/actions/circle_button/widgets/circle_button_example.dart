import 'package:flutter/widgets.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class CircleButtonExample extends StatelessWidget {
  const CircleButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.mdsTheme.colors;

    return ExampleDisplay(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 21),
            Container(
              width: 358,
              decoration: BoxDecoration(
                color: colors.surface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 116,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryCircleButton(
                        onPressed: () {},
                        child: PhosphorIcon(
                          PhosphorIcons.power(PhosphorIconsStyle.bold),
                        ),
                      ),
                      const SizedBox(width: 16),
                      PrimaryCircleButton(
                        colorMode: ColorMode.neutral,
                        onPressed: () {},
                        child: PhosphorIcon(
                          PhosphorIcons.alien(
                            PhosphorIconsStyle.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      SecondaryCircleButton(
                        onPressed: () {},
                        child: PhosphorIcon(
                          PhosphorIcons.plus(
                            PhosphorIconsStyle.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      SecondaryCircleButton(
                        colorMode: ColorMode.neutral,
                        onPressed: () {},
                        child: PhosphorIcon(
                          PhosphorIcons.user(
                            PhosphorIconsStyle.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
