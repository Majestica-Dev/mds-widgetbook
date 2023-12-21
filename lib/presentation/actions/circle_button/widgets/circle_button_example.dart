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
      children: [
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 91),
                child: Row(
                  children: [
                    Expanded(
                      child: PrimaryCircleButton(
                        onPressed: () {},
                        child: PhosphorIcon(
                          PhosphorIcons.power(PhosphorIconsStyle.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: SecondaryCircleButton(
                        onPressed: () {},
                        child: PhosphorIcon(
                          PhosphorIcons.plus(
                            PhosphorIconsStyle.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: SecondaryCircleButton(
                        onPressed: () {},
                        child: PhosphorIcon(
                          PhosphorIcons.user(
                            PhosphorIconsStyle.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
