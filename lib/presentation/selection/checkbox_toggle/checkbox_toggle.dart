import 'package:flutter/widgets.dart';
import 'package:mds_widget_book/core/helper_types.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgets/checkbox_toggle_example_tile.dart';
import 'widgets/customizable_checkbox.dart';
import 'widgets/customizable_toggle.dart';

@widgetbook.UseCase(
  path: 'Selection',
  name: 'CheckBox and Toggle',
  type: Selector,
)
Widget checkboxAndToggle(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(60),
    child: Row(
      children: [
        Flexible(child: CheckboxAndToggleExample()),
        SizedBox(width: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomizableToggle(),
            CustomizableCheckbox(),
          ],
        ),
      ],
    ),
  );
}
