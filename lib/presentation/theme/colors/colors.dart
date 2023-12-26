import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/presentation/theme/colors/widgets/base/colors_scheme.dart';
import 'package:mds_widget_book/presentation/theme/colors/widgets/customizable/customizbale_color_scheme.dart';

@widgetbook.UseCase(
  path: 'Theme',
  name: 'Colors',
  type: MDSTheme,
)
Widget colors(BuildContext context) {
  return const Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ColorsScheme(),
        CustomizableColorsScheme(),
      ],
    ),
  );
}
