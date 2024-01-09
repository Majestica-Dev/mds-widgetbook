import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/theme/colors/widgets/base/color_scheme_item.dart';

class ColorsScheme extends StatelessWidget {
  const ColorsScheme({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.mdsTheme.colors;

    return ExampleDisplay(
      width: 440,
      height: null,
      backgroundColor: colors.background,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15),
              ColorsSchemeItem(
                color: colors.background,
                name: 'background',
              ),
              ColorsSchemeItem(
                color: colors.surface,
                name: 'surface',
              ),
              const SizedBox(height: 30),

              //Primary  container
              ColorsSchemeItem(
                color: colors.primaryHighContainer,
                name: 'primary-high-container',
              ),
              ColorsSchemeItem(
                color: colors.primaryMedContainer,
                name: 'primary-med-container',
              ),
              ColorsSchemeItem(
                color: colors.primaryLowContainer,
                name: 'primary-low-container',
              ),

              const SizedBox(height: 30),
              //Neutral container
              ColorsSchemeItem(
                color: colors.neutralHighContainer,
                name: 'neutral-high-container',
              ),
              ColorsSchemeItem(
                color: colors.neutralMedContainer,
                name: 'neutral-med-container',
              ),
              ColorsSchemeItem(
                color: colors.neutralLowContainer,
                name: 'neutral-low-container',
              ),

              //Neutral content
              const SizedBox(height: 30),

              ColorsSchemeItem(
                color: colors.neutralHighContent,
                name: 'neutral-high-content',
              ),
              ColorsSchemeItem(
                color: colors.neutralMedContent,
                name: 'neutral-med-content',
              ),

              ColorsSchemeItem(
                color: colors.neutralLowContent,
                name: 'neutral-low-content',
              ),

              ColorsSchemeItem(
                color: colors.highContainerContent,
                name: 'high-container-content',
              ),
              const SizedBox(height: 30),

              ColorsSchemeItem(
                color: colors.primaryHighContent,
                name: 'primary-high-content',
              ),

              ColorsSchemeItem(
                color: colors.primaryMedContent,
                name: 'primary-med-content',
              ),

              ColorsSchemeItem(
                color: colors.primaryLowContent,
                name: 'primary-low-content',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
