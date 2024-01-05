import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class BorderRadiusScheme extends StatelessWidget {
  const BorderRadiusScheme({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;
    final List<Map<String, double>> borderRadius = [
      {'Br 1': 2},
      {'Br 2': 4},
      {'Br 3': 8},
      {'Br 4': 14},
      {'Br 5': 16},
      {'Br 6': 20},
      {'Br 7': 32},
      {'All': 500},
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExampleDisplay(
        width: 500,
        height: double.infinity,
        backgroundColor: t.colors.surface,
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 125,
                      child: Text(
                        'Border Radius',
                        style: t.textTheme.bodySBold.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                    ),
                    Text(
                      'Name',
                      style: t.textTheme.bodySBold.copyWith(
                        color: t.colors.neutralHighContent,
                      ),
                    ),
                    Text(
                      'Value',
                      style: t.textTheme.bodySBold.copyWith(
                        color: t.colors.neutralHighContent,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                for (Map<String, double> i in borderRadius)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 125,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: t.colors.neutralLowContent),
                            color: t.colors.surface,
                            borderRadius: BorderRadius.circular(i.values.first),
                          ),
                        ),
                        Text(
                          i.keys.first,
                          style: t.textTheme.bodySBold.copyWith(
                            color: t.colors.neutralHighContent,
                          ),
                        ),
                        Text(
                          '${i.values.first} px',
                          style: t.textTheme.bodySBold.copyWith(
                            color: t.colors.neutralHighContent,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
