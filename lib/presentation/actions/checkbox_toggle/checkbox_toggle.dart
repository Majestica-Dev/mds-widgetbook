import 'package:flutter/widgets.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgets/checkbox_toggle_example_tile.dart';
import 'widgets/customizable_checkbox.dart';
import 'widgets/customizable_toggle.dart';

@widgetbook.UseCase(
  path: 'Actions',
  name: 'CheckBox and Toggle', //TODO : renaming
  type: Widget,
)
Widget checkboxAndToggle(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(60),
    child: Row(
      children: [
        Flexible(child: CheckboxAndToggleExampleTile()),
        SizedBox(width: 50),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomizableToggle(),
              CustomizableCheckbox(),
            ],
          ),
        )
      ],
    ),
  );
}
