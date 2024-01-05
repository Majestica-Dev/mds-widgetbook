import 'package:flutter/material.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/example_screens/screens/example_navbar_screen.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

abstract final class ExampleScreens {}

@widgetbook.UseCase(
  path: 'Example Screens',
  name: 'ExampleScreens',
  type: ExampleScreens,
)
Widget exampleScreens(BuildContext context) {
  print(Uri.base.fragment);
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ExampleDisplay(
          body: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ExampleNavBarScreen(),
          ),
        ),
      ],
    ),
  );
}
