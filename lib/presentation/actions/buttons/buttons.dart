import 'package:flutter/widgets.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgets/buttons_example_tile.dart';
import 'widgets/customizable_button.dart';

@widgetbook.UseCase(
  path: 'Actions',
  name: 'Buttons',
  type: Widget, //TODO:
)
Widget buttons(BuildContext context) {
  return const Column(
    children: [
      SizedBox(height: 50),
      MDSButtonsExampleTile(),
      SizedBox(height: 150),
      CustomizableButton(),
    ],
  );
}
