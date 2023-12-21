import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_horizontal_item.dart';

import '../../core/utils/action_utils.dart';

class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      children: [
        ExampleHorizontalItem(
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
        ExampleHorizontalItem(
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
        ExampleHorizontalItem(
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
        ExampleHorizontalItem(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              buttonSize: MDSButtonSize.L,
              text: 'Button',
              onPressed: () {},
            ),
          ],
        ),
        ExampleHorizontalItem(
          children: [
            Expanded(
              child: SecondaryButton(
                leftIcon: ActionUtils.showBasketballIcon(),
                text: 'Button',
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: SecondaryButton(
                leftIcon: ActionUtils.showBasketballIcon(),
                text: 'Button',
                onPressed: () {},
              ),
            )
          ],
        ),
        ExampleHorizontalItem(
          children: [
            Expanded(
              child: PrimaryButton(
                leftIcon: ActionUtils.showBasketballIcon(),
                text: 'Button',
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 12),
            SecondaryButton(
              leftIcon: ActionUtils.showBasketballIcon(),
              text: 'Button',
              onPressed: () {},
            )
          ],
        ),
        ExampleHorizontalItem(
          children: [
            Expanded(
              child: PrimaryButton(
                leftIcon: ActionUtils.showBasketballIcon(),
                text: 'Button',
                buttonSize: MDSButtonSize.S,
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 8),
            SecondaryButton(
              leftIcon: ActionUtils.showBasketballIcon(),
              text: 'Button',
              buttonSize: MDSButtonSize.S,
              onPressed: () {},
            ),
            const SizedBox(width: 8),
            SecondaryButton(
              leftIcon: ActionUtils.showBasketballIcon(),
              text: 'Button',
              buttonSize: MDSButtonSize.S,
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 51,
            width: double.infinity,
            child: PrimaryButton(
              text: 'Button',
              onPressed: () {},
              buttonSize: MDSButtonSize.L,
            ),
          ),
        ),
      ],
    );
  }
}
