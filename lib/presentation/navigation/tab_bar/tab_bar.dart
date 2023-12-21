import 'package:flutter/widgets.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/core/helper_types.dart';
import 'package:mds_widget_book/presentation/navigation/tab_bar/widgets/tab_bar_example.dart';

@widgetbook.UseCase(
  path: 'Navigation',
  name: 'TabBar',
  type: Bar,
)
Widget tapBar(BuildContext context) {
  return const Center(
    child: TabBarExample(),
  );
}
