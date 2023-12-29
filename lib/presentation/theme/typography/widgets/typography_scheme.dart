import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/theme/typography/widgets/typography_scheme_item.dart';

class TypographyScheme extends StatelessWidget {
  const TypographyScheme({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.mdsTheme.textTheme;
    final colors = context.mdsTheme.colors;

    return ExampleDisplay(
      height: null,
      width: 500,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Text(
              'Regular',
              style: textTheme.bodyMRegular.copyWith(
              color: colors.primaryHighContent,
            ),
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
            TypographySchemeItem(
              name: 'Title2',
              textStyle: textTheme.title2Bold,
            ),
            TypographySchemeItem(
              name: 'Title3',
              textStyle: textTheme.title3Bold,
            ),
            TypographySchemeItem(
              name: 'Title1',
              textStyle: textTheme.title1Bold,
            ),
            TypographySchemeItem(
              name: 'Title Large',
              textStyle: textTheme.titleLargeBold,
            ),
            const SizedBox(height: 50),
            Text(
              'Bold',
              style: textTheme.bodyMBold.copyWith(
              color: colors.primaryHighContent,
            ),
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
            TypographySchemeItem(
              name: 'Title3',
              textStyle: textTheme.title3Regular,
            ),
            TypographySchemeItem(
              name: 'Title2',
              textStyle: textTheme.title2Regular,
            ),
            TypographySchemeItem(
              name: 'Title1',
              textStyle: textTheme.title1Regular,
            ),
            TypographySchemeItem(
              name: 'Title Large',
              textStyle: textTheme.titleLargeRegular,
            ),
          ],
        ),
      ),
    );
  }
}
