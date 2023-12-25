import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:mds_widget_book/application/theme/theme_cubit.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class SpacingScheme extends StatelessWidget {
  const SpacingScheme({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;
    final spacing = MDSSpacing(
      context.knobs.double.input(label: 'Space', initialValue: t.spacing.x1),
    );

    context.read<ThemeCubit>().setSpace(spacing: spacing);
    final space = t.spacing.x1;

    return ExampleDisplay(
      width: 500,
      height: 650,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Spacing',
                  style: t.textTheme.bodySBold,
                ),
                const SizedBox(height: 30),
                for (var i = 0; i < 11; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Container(
                      color: t.colors.primaryMedContainer,
                      height: 20,
                      width: i == 0 ? space / 2 : space * i.toDouble(),
                    ),
                  ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: t.textTheme.bodySBold,
                ),
                const SizedBox(height: 30),
                for (var i = 0; i < 11; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      'space ${i == 0 ? 0.5 : i.toDouble()}',
                    ),
                  ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Value',
                  style: t.textTheme.bodySBold,
                ),
                const SizedBox(height: 30),
                for (var i = 0; i < 11; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                      '${i == 0 ? space / 2 : space * i.toDouble()}px',
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
