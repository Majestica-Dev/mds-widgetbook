import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:mds_widget_book/application/selection/checkbox/checkbox_data_cubit.dart';

class CustomizableCheckbox extends StatelessWidget {
  const CustomizableCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final checkBoxData = context.read<CheckBoxDataCubit>().state;

    final bool value = context.knobs.boolean(
      label: 'CheckBox value',
      initialValue: checkBoxData.value,
    );
    final bool enabled = context.knobs.boolean(
      label: 'CheckBox State',
      description: 'is enabled',
      initialValue: checkBoxData.enabled,
    );
    context.read<CheckBoxDataCubit>().setData(enabled: enabled, value: value);

    return MDSCheckBox(
      value: value,
      enabled: enabled,
      onChanged: (value) {},
    );
  }
}
