import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/example_screens/screens/example_navbar_screen.dart';

abstract final class ExampleScreens {}

@widgetbook.UseCase(
  path: 'Example Screens',
  name: 'ExampleScreens',
  type: ExampleScreens,
)
Widget exampleScreens(BuildContext context) {
  return const Center(
    child: ExampleDisplay(
      body: ExampleNavBarScreen(),
    ),
  );
}
