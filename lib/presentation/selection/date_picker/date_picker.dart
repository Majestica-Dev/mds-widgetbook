import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mds_widget_book/core/helper_types.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Selection',
  name: 'Date picker',
  type: Selector,
)
Widget checkboxAndToggle(BuildContext context) {
  return Center(
    child: Column(
      children: [
        Container(
          width: 500,
          height: 700,
          color: Colors.orange,
          child: ScrollDatePicker(
            viewType: [
              DatePickerViewType.day,
            ],
            maximumDate: DateTime(2050),
            selectedDate: DateTime.now(),
            onDateTimeChanged: (value) {},
            scrollViewOptions: const DatePickerScrollViewOptions(
                month: ScrollViewDetailOptions(
              textStyle: TextStyle(
                fontSize: 30,
              ),
              selectedTextStyle: TextStyle(fontSize: 30),
            )),
            options: const DatePickerOptions(
              itemExtent: 60,
              isLoop: false,
              diameterRatio: 10,
              backgroundColor: Colors.orange,
            ),
          ),
        ),
      ],
    ),
  );
}
