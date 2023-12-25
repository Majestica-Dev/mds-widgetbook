import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/application/theme/colors/colors_form_cubit.dart';
import 'package:mds_widget_book/application/theme/theme_cubit.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/theme/colors/core/widgets/color_scheme_item.dart';
import 'package:mds_widget_book/presentation/theme/colors/colors_editor/widgets/color_scheme_customizable_item.dart';

import 'package:widgetbook/widgetbook.dart';

class CustomizableColorScheme extends StatelessWidget {
  const CustomizableColorScheme({super.key});

  @override
  Widget build(BuildContext context) {
    final colorsData = context.watch<ColorsDataCubit>().state;

    final double primaryHighContainerOpacity =
        colorsData.primaryHighContainerOpacity;
    final double primaryMedContainerOpacity =
        colorsData.primaryMedContainerOpacity;
    final double primaryLowContainerOpacity =
        colorsData.primaryLowContainerOpacity;

    final double primaryHighContentOpacity =
        colorsData.primaryHighContentOpacity;
    final double primaryLowContentOpacity = colorsData.primaryLowContentOpacity;
    final double primaryMedContentOpacity = colorsData.primaryMedContentOpacity;

    final double neutralHighContainerOpacity =
        colorsData.neutralHighContainerOpacity;
    final double neutralMedContainerOpacity =
        colorsData.neutralMedContainerOpacity;
    final double neutralLowContainerOpacity =
        colorsData.neutralLowContainerOpacity;

    final double neutralHighContentOpacity =
        colorsData.neutralHighContentOpacity;
    final double neutralMedContentOpacity = colorsData.neutralMedContentOpacity;
    final double neutralLowContentOpacity = colorsData.neutralLowContentOpacity;

    final colors = context.mdsTheme.colors;
    final textTheme = context.mdsTheme.textTheme;

    final Color background = context.knobs.color(
      label: 'Background',
      initialValue: colors.background,
    );
    final Color surface = context.knobs.color(
      label: 'Surface',
      initialValue: colors.surface,
    );
    final Color primary = context.knobs.color(
      label: 'Primary',
      initialValue: colorsData.primary,
    );
    print(colorsData.primary);
    final Color neutral = context.knobs.color(
      label: 'Neutral',
      initialValue: colorsData.nuetral,
    );
    final highContainerContent = context.knobs.color(
      label: 'High-container-content',
      initialValue: colors.highContainerContent,
    );

    final Color primaryHighContainer = primary.withOpacity(
      primaryHighContainerOpacity,
    );
    final Color primaryMedContainer = primary.withOpacity(
      primaryMedContainerOpacity,
    );
    final Color primaryLowContainer = primary.withOpacity(
      primaryLowContainerOpacity,
    );

    final Color primaryHighContent = primary.withOpacity(
      primaryHighContentOpacity,
    );
    final Color primaryLowContent =
        primary.withOpacity(primaryLowContentOpacity);
    final Color primaryMedContent =
        primary.withOpacity(primaryMedContentOpacity);

    final Color neutralHighContainer =
        neutral.withOpacity(neutralHighContainerOpacity);
    final Color neutralMedContainer =
        neutral.withOpacity(neutralMedContainerOpacity);
    final Color neutralLowContainer =
        neutral.withOpacity(neutralLowContainerOpacity);

    final Color neutralHighContent =
        neutral.withOpacity(neutralHighContentOpacity);
    final Color neutralMedContent =
        neutral.withOpacity(neutralMedContentOpacity);
    final Color neutralLowContent =
        neutral.withOpacity(neutralLowContentOpacity);

    //TODO : (Narek) equatble MDSColor

    context
        .watch<ColorsDataCubit>()
        .setData(primary: primary, neutral: neutral);
    context.read<ThemeCubit>().setColor(
          colors: MDSColors(
            background: background,
            surface: surface,
            primaryHighContainer: primaryHighContainer,
            primaryMedContainer: primaryMedContainer,
            primaryLowContainer: primaryLowContainer,
            neutralHighContainer: neutralHighContainer,
            neutralMedContainer: neutralMedContainer,
            neutralLowContainer: neutralLowContainer,
            primaryHighContent: primaryHighContent,
            primaryMedContent: primaryMedContent,
            primaryLowContent: primaryLowContent,
            neutralHighContent: neutralHighContent,
            neutralMedContent: neutralMedContent,
            neutralLowContent: neutralLowContent,
            highContainerContent: highContainerContent,
          ),
        );

    return ExampleDisplay(
      width: 440,
      height: 550,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 180,
                  child: Text(
                    'Main tocken',
                    style: textTheme.bodySBold,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 130,
                  child: Text(
                    'Child tocken',
                    style: textTheme.bodySBold,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 100,
                  child: Text(
                    'Hex codes',
                    style: textTheme.bodySBold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ColorSchemeItem(
              color: background,
              mainTocken: 'background',
              childTocken: 'backgorund',
            ),
            ColorSchemeItem(
              color: surface,
              mainTocken: 'surface',
              childTocken: 'surface',
            ),
            const SizedBox(height: 30),

            //Primary  container
            ColorSchemeCustomizableItem(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        primaryHighContainerOpacity: double.parse(value) / 100,
                      );
                }
              },
              opacity: primaryHighContainerOpacity,
              color: primaryHighContainer,
              mainTocken: 'primary-high-container',
              childTocken: 'primary',
            ),
            ColorSchemeCustomizableItem(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        primaryMedContainerOpacity: double.parse(value) / 100,
                      );
                }
              },
              opacity: primaryMedContainerOpacity,
              color: primaryMedContainer,
              mainTocken: 'primary-med-container',
              childTocken: 'primary',
            ),
            ColorSchemeCustomizableItem(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        primaryLowContainerOpacity: double.parse(value) / 100,
                      );
                }
              },
              opacity: primaryLowContainerOpacity,
              color: primaryLowContainer,
              mainTocken: 'primary-low-container',
              childTocken: 'primary',
            ),

            const SizedBox(height: 30),
            //Neutral container
            ColorSchemeCustomizableItem(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        neutralHighContainerOpacity: double.parse(value) / 100,
                      );
                }
              },
              opacity: neutralHighContainerOpacity,
              color: neutralHighContainer,
              mainTocken: 'neutral-high-container',
              childTocken: 'neutral',
            ),
            ColorSchemeCustomizableItem(
              onChanged: (value) {
                context.read<ColorsDataCubit>().setData(
                      neutralMedContainerOpacity: double.parse(value) / 100,
                    );
              },
              opacity: neutralMedContainerOpacity,
              color: neutralMedContainer,
              mainTocken: 'neutral-med-container',
              childTocken: 'neutal',
            ),
            ColorSchemeCustomizableItem(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        neutralLowContainerOpacity: double.parse(value) / 100,
                      );
                }
              },
              opacity: neutralLowContainerOpacity,
              color: neutralLowContainer,
              mainTocken: 'neutral-low-container',
              childTocken: 'neutral',
            ),

            //Neutral content
            const SizedBox(height: 30),

            ColorSchemeCustomizableItem(
              onChanged: (value) {
                context.read<ColorsDataCubit>().setData(
                      neutralHighContentOpacity: double.parse(value) / 100,
                    );
              },
              opacity: neutralHighContentOpacity,
              color: neutralHighContent,
              mainTocken: 'neutral-high-content',
              childTocken: 'neutral',
            ),
            ColorSchemeCustomizableItem(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        neutralMedContentOpacity: double.parse(value) / 100,
                      );
                }
              },
              opacity: neutralMedContainerOpacity,
              color: neutralMedContainer,
              mainTocken: 'neutral-med-content',
              childTocken: 'neutral',
            ),

            ColorSchemeCustomizableItem(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        neutralLowContentOpacity: double.parse(value) / 100,
                      );
                }
              },
              opacity: neutralLowContainerOpacity,
              color: neutralLowContainer,
              mainTocken: 'neutral-low-content',
              childTocken: 'neutral',
            ),

            ColorSchemeItem(
              color: highContainerContent,
              mainTocken: 'high-container-content',
              childTocken: 'surface',
            ),
            const SizedBox(height: 30),

            ColorSchemeCustomizableItem(
              opacity: primaryHighContentOpacity,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        primaryHighContentOpacity: double.parse(value) / 100,
                      );
                }
              },
              color: primaryHighContent,
              mainTocken: 'primary-high-content',
              childTocken: 'primary',
            ),

            ColorSchemeCustomizableItem(
              opacity: primaryMedContentOpacity,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        primaryMedContentOpacity: double.parse(value) / 100,
                      );
                }
              },
              color: primaryMedContent,
              mainTocken: 'primary-med-content',
              childTocken: 'primary',
            ),

            ColorSchemeCustomizableItem(
              opacity: primaryLowContentOpacity,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<ColorsDataCubit>().setData(
                        primaryLowContentOpacity: double.parse(value) / 100,
                      );
                }
              },
              color: primaryLowContent,
              mainTocken: 'primary-low-content',
              childTocken: 'primary',
            ),
          ],
        ),
      ),
    );
  }
}
