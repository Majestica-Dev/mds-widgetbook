import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/actions/core/utils/constants.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_item.dart';

class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 21),
            ExampleItem(
              children: [
                Expanded(
                  child: SecondaryButton(
                    text: 'Button',
                    buttonSize: MDSButtonSize.L,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: PrimaryButton(
                    text: 'Button',
                    buttonSize: MDSButtonSize.L,
                    onPressed: () {},
                  ),
                )
              ],
            ),
            ExampleItem(
              children: [
                SecondaryButton(
                  buttonSize: MDSButtonSize.L,
                  text: 'Button',
                  onPressed: () {},
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: PrimaryButton(
                    buttonSize: MDSButtonSize.L,
                    text: 'Button',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            ExampleItem(
              children: [
                Expanded(
                  child: PrimaryButton(
                    buttonSize: MDSButtonSize.L,
                    text: 'Button',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            ExampleItem(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(
                  buttonSize: MDSButtonSize.L,
                  text: 'Button',
                  onPressed: () {},
                ),
              ],
            ),
            ExampleItem(
              children: [
                Expanded(
                  child: SecondaryButton(
                    leftIcon: basketballIcon,
                    text: 'Button',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SecondaryButton(
                    leftIcon: basketballIcon,
                    text: 'Button',
                    onPressed: () {},
                  ),
                )
              ],
            ),
            ExampleItem(
              children: [
                Expanded(
                  child: PrimaryButton(
                    leftIcon: basketballIcon,
                    text: 'Button',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 12),
                SecondaryButton(
                  leftIcon: basketballIcon,
                  text: 'Button',
                  onPressed: () {},
                )
              ],
            ),
            ExampleItem(
              children: [
                PrimaryButton(
                  leftIcon: basketballIcon,
                  text: 'Button',
                  buttonSize: MDSButtonSize.S,
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                SecondaryButton(
                  leftIcon: basketballIcon,
                  text: 'Button',
                  buttonSize: MDSButtonSize.S,
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                SecondaryButton(
                  leftIcon: basketballIcon,
                  text: 'Button',
                  buttonSize: MDSButtonSize.S,
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  text: 'Button',
                  onPressed: () {},
                  buttonSize: MDSButtonSize.L,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
