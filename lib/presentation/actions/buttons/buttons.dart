import 'package:flutter/widgets.dart';
import 'package:mds_widget_book/core/helper_types.dart';
import 'package:mds_widget_book/presentation/actions/buttons/widgets/buttons_example.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgets/buttons_collection.dart';
import 'widgets/customizable_button.dart';

@widgetbook.UseCase(
  path: 'Actions',
  name: 'Buttons',
  type: Button,
)
Widget buttons(BuildContext context) {
  return const SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 50),
        ButtonsCollection(),
        SizedBox(height: 100),
        CustomizableButton(),
        SizedBox(height: 100),
        ButtonsExample(),
        SizedBox(height: 50),
      ],
    ),
  );
}
