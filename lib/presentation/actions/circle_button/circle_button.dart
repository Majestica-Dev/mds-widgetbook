import 'package:flutter/widgets.dart';
import 'package:mds_widget_book/core/helper_types.dart';

import 'package:mds_widget_book/presentation/actions/circle_button/widgets/circle_button_example.dart';
import 'package:mds_widget_book/presentation/actions/circle_button/widgets/customizable_circle_button.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Actions',
  name: 'Circle Button',
  type: Button,
)
Widget buttons(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(60),
    child: Row(
      children: [
        Flexible(child: CircleButtonExample()),
        SizedBox(width: 50),
        CustomizableCircleButton()
      ],
    ),
  );
}
