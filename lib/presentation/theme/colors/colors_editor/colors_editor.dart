import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/theme/colors/colors_editor/widgets/customizbale_color_scheme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Theme',
  name: 'Colors Editor',
  type: MDSTheme,
)
Widget colors(BuildContext context) {
  return const Center(child: CustomizableColorScheme()); //TODO
}
