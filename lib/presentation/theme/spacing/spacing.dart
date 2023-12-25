import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/theme/spacing/widgets/spacing_scheme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Theme',
  name: 'Spacing',
  type: MDSTheme,
)
Widget colorsReview(BuildContext context) {
  return const Center(child: SpacingScheme());
}
