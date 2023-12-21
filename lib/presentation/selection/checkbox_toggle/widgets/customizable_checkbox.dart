import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableCheckbox extends StatelessWidget {
  const CustomizableCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final bool value = context.knobs.boolean(
      label: 'CheckBox value',
      initialValue: true,
    );
    final bool enabled = context.knobs.boolean(
      label: 'CheckBox State',
      description: 'is enabled',
      initialValue: true,
    );

    return MDSCheckBox(
      value: value,
      enabled: enabled,
      onChanged: (value) {},
    );
  }
}
