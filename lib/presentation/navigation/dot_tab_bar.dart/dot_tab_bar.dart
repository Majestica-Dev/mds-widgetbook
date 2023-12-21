import 'package:flutter/widgets.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/core/helper_types.dart';
import 'package:mds_widget_book/presentation/navigation/dot_tab_bar.dart/widgets/dot_tab_bar_example.dart';

@widgetbook.UseCase(
  path: 'Navigation',
  name: 'DotTabBar',
  type: Bar,
)
Widget tapBar(BuildContext context) {
  return const Center(
    child: DotTabBarExample(),
  );
}
