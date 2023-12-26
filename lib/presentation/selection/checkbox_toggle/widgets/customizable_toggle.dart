import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/application/selection/toggle/toggle_data_cubit.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableToggle extends StatelessWidget {
  const CustomizableToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final toggleData = context.read<ToggleDataCubit>().state;

    final bool value = context.knobs.boolean(
      label: 'Toogle value',
      initialValue: toggleData.value,
    );
    final bool enabled = context.knobs.boolean(
      label: 'Toggle State',
      description: 'is enabled',
      initialValue: toggleData.enabled,
    );
    final double width = context.knobs.double.input(
      label: 'Toggle width',
      initialValue: toggleData.width,
    );
    final double thumbSize = context.knobs.double.input(
      label: 'Toggle thumSized',
      initialValue: toggleData.thumbSize,
    );

    context.read<ToggleDataCubit>().setData(
          value: value,
          enabled: enabled,
          width: width,
          thumbSize: thumbSize,
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
