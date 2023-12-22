import 'package:flutter/widgets.dart';
import 'package:mds_widget_book/presentation/navigation/bottom_nav_bar/widgets/bottom_nav_bar_example.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/core/helper_types.dart';

@widgetbook.UseCase(
  path: 'Navigation',
  name: 'BottomNavBar',
  type: Bar,
)
Widget bottomNavBar(BuildContext context) {
  return const Center(
    child: BottomNavBarExample(),
  );
}
