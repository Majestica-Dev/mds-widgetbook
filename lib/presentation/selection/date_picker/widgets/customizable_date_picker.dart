import 'package:flutter/cupertino.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableDatePicker extends StatelessWidget {
  const CustomizableDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final double? wrapperWidth = context.knobs.doubleOrNull.input(
      label: 'Wrapper With',
      initialValue: null,
    );
    final double? wrapperheight = context.knobs.doubleOrNull.input(
      label: 'Wrapper Height',
      initialValue: null,
    );
    final CupertinoDatePickerMode mode = context.knobs.list(
        label: 'Mode',
        options: [
          CupertinoDatePickerMode.date,
          CupertinoDatePickerMode.dateAndTime,
          CupertinoDatePickerMode.monthYear,
          CupertinoDatePickerMode.time,
        ],
        initialOption: CupertinoDatePickerMode.dateAndTime,
        labelBuilder: (value) {
          String text =
              "${value.name[0].toUpperCase()}${value.name.substring(1)}";
          List<String> splitText = text.split(RegExp(r"(?=[A-Z])"));

          return splitText.join(' ');
        });
    final Color? textColor = context.knobs.colorOrNull(
      label: 'Text Color',
      initialValue: null,
    ); // TODO : remove
    final Color? backgroundColor = context.knobs.colorOrNull(
      label: 'Background Color',
      initialValue: null,
    );
    DatePickerDateOrder? dateOrder = context.knobs.listOrNull(
      label: 'Date Order',
      options: [
        DatePickerDateOrder.mdy,
        DatePickerDateOrder.dmy,
        DatePickerDateOrder.ydm,
        DatePickerDateOrder.ymd,
      ],
      initialOption: DatePickerDateOrder.dmy,
    );
    final double itemExtent = context.knobs.double.input(
      label: 'Item Extent',
      initialValue: 32,
    );
    final bool use24hFormat = context.knobs.boolean(
      label: 'Use 24 Format',
      initialValue: false,
    );

    return SizedBox(
      width: wrapperWidth,
      height: wrapperheight,
      child: MDSDatePicker(
        key: UniqueKey(),
        mode: mode,
        textColor: textColor,
        backgroundColor: backgroundColor,
        dateOrder: dateOrder,
        itemExtent: itemExtent,
        use24hFormat: use24hFormat,
        onDateTimeChanged: (value) {},
      ),
    );
  }
}
