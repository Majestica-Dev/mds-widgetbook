import 'package:flutter/cupertino.dart';
import 'package:mds_widget_book/presentation/selection/date_picker/widgets/customizable_date_picker.dart';
import 'package:mds_widget_book/presentation/selection/date_picker/widgets/date_picker_examples.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Selection',
  name: 'Date Picker',
  type: CupertinoDatePicker,
)
Widget datePicker(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DatePickerExamples(),
        CustomizableDatePicker(),
      ],
    ),
  );
}
