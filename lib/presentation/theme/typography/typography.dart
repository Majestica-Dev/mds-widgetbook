import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/presentation/theme/typography/widgets/typography_scheme.dart';

@widgetbook.UseCase(
  path: 'Theme',
  name: 'Typography',
  type: MDSTheme,
)
Widget typography(BuildContext context) {
  return const Center(child: TypographyScheme());
}
