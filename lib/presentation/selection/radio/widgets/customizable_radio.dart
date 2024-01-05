import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableRadio extends StatelessWidget {
  const CustomizableRadio({super.key});

  @override
  Widget build(BuildContext context) {
    final bool value = context.knobs.boolean(
      label: 'Value',
      initialValue: false,
    );
    final bool enabled = context.knobs.boolean(
      label: 'Radio State',
      description: 'is enabled',
      initialValue: true,
    );

    return RadioButton(
      value: value,
      enabled: enabled,
      onChanged: (value) {},
    );
  }
}
