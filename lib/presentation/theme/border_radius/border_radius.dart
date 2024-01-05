import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/theme/border_radius/widgets/border_radius_scheme.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Theme',
  name: 'Border Radius',
  type: MDSTheme,
)
Widget borderRadius(BuildContext context) {
  return const Center(child: BorderRadiusScheme());
}
