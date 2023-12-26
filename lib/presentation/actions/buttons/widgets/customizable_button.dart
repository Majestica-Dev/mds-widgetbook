import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/application/action/buttons/buttons_data_cubit.dart';
import 'package:mds_widget_book/domain/actions/button_type.dart';
import 'package:mds_widget_book/presentation/actions/core/utils/action_utils.dart';
import 'package:mds_widget_book/presentation/actions/core/utils/constants.dart';

import 'package:widgetbook/widgetbook.dart';

class CustomizableButton extends StatelessWidget {
  const CustomizableButton({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonData = context.read<ButtonsDataCubit>().state;

    final ButtonType buttonType = context.knobs.list(
      initialOption: buttonData.buttonType,
      label: 'Type',
      options: [
        ButtonType.primary,
        ButtonType.secondary,
        ButtonType.text,
      ],
      labelBuilder: (value) => value.name,
    );
    final bool disabled = context.knobs.boolean(
      initialValue: buttonData.disabled,
      label: 'State',
      description: 'is disabled',
    );
    final String text = context.knobs.string(
      label: 'Text',
      initialValue: buttonData.text,
    );
    final bool showLeftIcon = context.knobs.boolean(
      label: 'Left icon',
      initialValue: buttonData.showLeftIcon,
    );
    final bool showRigtIcon = context.knobs.boolean(
      label: 'Right icon',
      initialValue: buttonData.showRigtIcon,
    );

    final MDSButtonSize buttonSize = context.knobs.list(
      initialOption: buttonData.buttonSize,
      label: 'Size',
      description: 'for text type is suported only L and M',
      options: ActionsUtils.getAbleButtonSizes(buttonType: buttonType),
      labelBuilder: (value) => value.name,
    );

    final ColorMode colorMode = context.knobs.list(
      initialOption: buttonData.colorMode,
      label: 'Color Mode',
      description: 'supports only  Secondary type',
      options: [
        ColorMode.primary,
        ColorMode.neutral,
      ],
      labelBuilder: (value) => value.name,
    );

    final Axis axis = context.knobs.list(
      initialOption: buttonData.axis,
      label: 'Axis',
      options: [Axis.horizontal, Axis.vertical],
      labelBuilder: (value) => value.name,
    );

    context.read<ButtonsDataCubit>().setData(
          buttonType: buttonType,
          disabled: disabled,
          text: text,
          showLeftIcon: showLeftIcon,
          showRigtIcon: showRigtIcon,
          buttonSize: buttonSize,
          colorMode: colorMode,
          axis: axis,
        );

    return Center(
      child: ActionsUtils.getButtonByType(
        buttonType: buttonType,
        disabled: disabled,
        axis: axis,
        buttonSize: buttonSize,
        text: text,
        leftIcon: showLeftIcon ? basketballIcon : null,
        rightIcon: showRigtIcon ? basketballIcon : null,
        colorMode: colorMode,
      ),
    );
  }
}
