import 'package:flutter/cupertino.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class DatePickerExamples extends StatelessWidget {
  const DatePickerExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: MDSDatePicker(
              onDateTimeChanged: (value) {},
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: MDSDatePicker(
              onDateTimeChanged: (value) {},
              mode: CupertinoDatePickerMode.date,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: MDSDatePicker(
              onDateTimeChanged: (value) {},
              mode: CupertinoDatePickerMode.monthYear,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: MDSDatePicker(
              onDateTimeChanged: (value) {},
              mode: CupertinoDatePickerMode.time,
            ),
          ),
        ],
      ),
    );
  }
}
