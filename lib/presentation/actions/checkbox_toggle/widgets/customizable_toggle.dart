import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableToggle extends StatelessWidget {
  const CustomizableToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final bool value = context.knobs.boolean(
      label: 'Toogle value',
      initialValue: true,
    );
    final bool enabled = context.knobs.boolean(
      label: 'Toggle State',
      description: 'is enabled',
      initialValue: true,
    );
    final double width = context.knobs.double.input(
      label: 'Toggle width',
      initialValue: 56,
    );
    final double thumbSize = context.knobs.double.input(
      label: 'Toggle thumSized',
      initialValue: 28,
    );

    return MDSToggle(
      value: value,
      enabled: enabled,
      width: width,
      thumbSize: thumbSize,
      onChanged: (value) {},
    );
  }
}
