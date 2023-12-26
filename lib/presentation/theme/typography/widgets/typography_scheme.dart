import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/theme/typography/widgets/typography_scheme_item.dart';

class TypographyScheme extends StatelessWidget {
  const TypographyScheme({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.mdsTheme.textTheme;

    return ExampleDisplay(
      height: 690,
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Regular',
            style: textTheme.bodyMRegular,
          ),
          const SizedBox(height: 20),
          TypographySchemeItem(
            name: 'Body XS',
            textStyle: textTheme.bodyXSRegular,
          ),
          TypographySchemeItem(
            name: 'Body S',
            textStyle: textTheme.bodySRegular,
          ),
          TypographySchemeItem(
            name: 'Body M',
            textStyle: textTheme.bodyMRegular,
          ),
          TypographySchemeItem(
            name: 'Headline',
            textStyle: textTheme.headlineRegular,
          ),
          const SizedBox(height: 50),
          Text(
            'Bold',
            style: textTheme.bodyMBold,
          ),
          const SizedBox(height: 20),
          TypographySchemeItem(
            name: 'Body XS',
            textStyle: textTheme.bodyXSBold,
          ),
          TypographySchemeItem(
            name: 'Body S',
            textStyle: textTheme.bodySBold,
          ),
          TypographySchemeItem(
            name: 'Body M',
            textStyle: textTheme.bodyMBold,
          ),
          TypographySchemeItem(
            name: 'Headline',
            textStyle: textTheme.headlineBold,
          ),
        ],
      ),
    );
  }
}
