import 'package:flutter/cupertino.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableDatePicker extends StatefulWidget {
  const CustomizableDatePicker({super.key});

  @override
  State<CustomizableDatePicker> createState() => _CustomizableDatePickerState();
}

class _CustomizableDatePickerState extends State<CustomizableDatePicker> {
  CupertinoDatePickerMode mode = CupertinoDatePickerMode.dateAndTime;
  @override
  Widget build(BuildContext context) {
    // final CupertinoDatePickerMode mode = context.knobs.list(
    //   label: 'Mode',
    //   options: [
    //     CupertinoDatePickerMode.date,
    //     CupertinoDatePickerMode.dateAndTime,
    //     CupertinoDatePickerMode.monthYear,
    //     CupertinoDatePickerMode.time,
    //   ],
    //   initialOption: CupertinoDatePickerMode.dateAndTime,
    //   labelBuilder: (value) => value.name,
    // );

    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('anuma');
          setState(() {
            mode = CupertinoDatePickerMode.date;
          });
        },
        child: MDSDatePicker(
          mode: mode,
          textColor: null,
          backgroundColor: null,
          dateOrder: null,
          itemExtent: 32,
          use24hFormat: false,
          onDateTimeChanged: (value) {},
        ),
      ),
    );
  }

  @override
  void dispose() {
    print('ee');
    // TODO: implement dispose
    super.dispose();
  }
}
