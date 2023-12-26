import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/theme/colors/widgets/colors_catalog_item.dart';

class ColorsScheme extends StatelessWidget {
  const ColorsScheme({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.mdsTheme.textTheme;
    final colors = context.mdsTheme.colors;

    return ExampleDisplay(
      width: 440,
      height: 550,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            ColorsCatalogItem(
              color: colors.background,
              mainToken: 'background',
              childToken: 'backgorund',
            ),
            ColorsCatalogItem(
              color: colors.surface,
              mainToken: 'surface',
              childToken: 'surface',
            ),
            const SizedBox(height: 30),

            //Primary  container
            ColorsCatalogItem(
              color: colors.primaryHighContainer,
              mainToken: 'primary-high-container',
              childToken: 'primary',
            ),
            ColorsCatalogItem(
              color: colors.primaryMedContainer,
              mainToken: 'primary-med-container',
              childToken: 'primary',
            ),
            ColorsCatalogItem(
              color: colors.primaryLowContainer,
              mainToken: 'primary-low-container',
              childToken: 'primary',
            ),

            const SizedBox(height: 30),
            //Neutral container
            ColorsCatalogItem(
              color: colors.neutralHighContainer,
              mainToken: 'neutral-high-container',
              childToken: 'neutral',
            ),
            ColorsCatalogItem(
              color: colors.neutralMedContainer,
              mainToken: 'neutral-med-container',
              childToken: 'neutal',
            ),
            ColorsCatalogItem(
              color: colors.neutralLowContainer,
              mainToken: 'neutral-low-container',
              childToken: 'neutral',
            ),

            //Neutral content
            const SizedBox(height: 30),

            ColorsCatalogItem(
              color: colors.neutralHighContent,
              mainToken: 'neutral-high-content',
              childToken: 'neutral',
            ),
            ColorsCatalogItem(
              color: colors.neutralMedContent,
              mainToken: 'neutral-med-content',
              childToken: 'neutral',
            ),

            ColorsCatalogItem(
              color: colors.neutralLowContent,
              mainToken: 'neutral-low-content',
              childToken: 'neutral',
            ),

            ColorsCatalogItem(
              color: colors.highContainerContent,
              mainToken: 'high-container-content',
              childToken: 'surface',
            ),
            const SizedBox(height: 30),

            ColorsCatalogItem(
              color: colors.primaryHighContent,
              mainToken: 'primary-high-content',
              childToken: 'primary',
            ),

            ColorsCatalogItem(
              color: colors.primaryMedContent,
              mainToken: 'primary-med-content',
              childToken: 'primary',
            ),

            ColorsCatalogItem(
              color: colors.primaryLowContent,
              mainToken: 'primary-low-content',
              childToken: 'primary',
            ),
          ],
        ),
      ),
    );
  }
}
