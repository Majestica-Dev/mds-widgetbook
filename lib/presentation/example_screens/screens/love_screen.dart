import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_item.dart';

class LoveScreen extends StatelessWidget {
  const LoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.mdsTheme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        MDSDotTabBar(
          items: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What is love?',
                  style: textTheme.title1Regular,
                ),
                const SizedBox(height: 10),
                Text(
                  'Love as a cognitive and social phenomenon is challenging and complex. It runs on hormones, neural connections, chemical reactions, as well as many other factors. Scientists continue to research the vast range of feelings, habits, reactions, and behavior patterns that fall under the term "love."',
                  style: textTheme.bodyMRegular,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The languages of love',
                  style: textTheme.title1Regular,
                ),
                const SizedBox(height: 10),
                Text(
                  '''The languages of love Dr. Gary Chapman, an American author, and preacher has introduced the idea of love languages in his book, The Five Love Languages: How to Express Heartfelt Commitment to Your Mate. The book outlines five general ways in which romantic partners can express and experience love. According to a readers' opinion poll results, 23% of people consider their primary love language words of affirmation, 20% voted for quality time, 20% for acts of service, 19% for physical touch, and 18% for receiving gifts.''',
                  style: textTheme.bodyMRegular,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quic',
                  style: textTheme.title1Regular,
                ),
                const SizedBox(height: 20),
                Text(
                  '''What is the most common primary love language?''',
                  style: textTheme.bodyMRegular,
                ),
                const SizedBox(height: 20),
                ExampleItem(
                  padding: const EdgeInsets.all(0),
                  backColor: context.mdsTheme.colors.neutralLowContainer,
                  children: [
                    Text(
                      '1.Physical toch.',
                      style: textTheme.bodyMRegular,
                    ),
                    MDSCheckBox(
                      value: false,
                      onChanged: (value) {},
                    )
                  ],
                ),
                const SizedBox(height: 16),
                ExampleItem(
                  padding: const EdgeInsets.all(0),
                  backColor: context.mdsTheme.colors.neutralLowContainer,
                  children: [
                    Text(
                      '2. Receiving gifts.',
                      style: textTheme.bodyMRegular,
                    ),
                    MDSCheckBox(
                      value: false,
                      onChanged: (value) {},
                    )
                  ],
                ),
                const SizedBox(height: 16),
                ExampleItem(
                  padding: const EdgeInsets.all(0),
                  backColor: context.mdsTheme.colors.neutralLowContainer,
                  children: [
                    Text(
                      '3. Words of affirmation.',
                      style: textTheme.bodyMRegular,
                    ),
                    MDSCheckBox(
                      value: true,
                      onChanged: (value) {},
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
