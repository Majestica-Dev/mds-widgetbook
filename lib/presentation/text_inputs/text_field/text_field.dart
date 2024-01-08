import 'package:flutter/material.dart';
import 'package:mds_widget_book/presentation/text_inputs/text_field/widgets/customizable_text_field.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/presentation/text_inputs/text_field/widgets/text_field_examples.dart';

@widgetbook.UseCase(
  path: 'Text Inputs',
  name: 'TextField',
  type: TextField,
)
Widget textField(BuildContext context) {
  return const Center(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldExamples(),
          SizedBox(width: 30),
          CustomizableTextField(),
        ],
      ),
    ),
  );
}
