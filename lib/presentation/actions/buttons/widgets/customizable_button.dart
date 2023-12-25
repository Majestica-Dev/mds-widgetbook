import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/domain/actions/button_type.dart';
import 'package:mds_widget_book/presentation/actions/core/utils/action_utils.dart';

import 'package:widgetbook/widgetbook.dart';

class CustomizableButton extends StatelessWidget {
  const CustomizableButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonType buttonType = context.knobs.list(
      label: 'Type',
      options: [
        ButtonType.primary,
        ButtonType.secondary,
        ButtonType.text,
      ],
      labelBuilder: (value) => value.name,
    );
    final bool disabled = context.knobs.boolean(
      label: 'State',
      description: 'is disabled',
    );
    final String text = context.knobs.string(
      label: 'Text',
      initialValue: 'Button',
    );
    final bool showLeftIcon = context.knobs.boolean(
      label: 'Left icon',
      initialValue: true,
    );
    final bool showRigtIcon = context.knobs.boolean(
      label: 'Right icon',
      initialValue: true,
    );

    final MDSButtonSize buttonSize = context.knobs.list(
      initialOption: MDSButtonSize.M,
      label: 'Size',
      description: 'for text type is suported only L and M',
      options: ActionsUtils.getAbleButtonSizes(buttonType: buttonType),
      labelBuilder: (value) => value.name,
    );

    final ColorMode colorMode = context.knobs.list(
      label: 'Color Mode',
      description: 'supports only  Secondary type',
      options: [
        ColorMode.primary,
        ColorMode.neutral,
      ],
      labelBuilder: (value) => value.name,
    );

    final Axis axis = context.knobs.list(
      label: 'Axis',
      options: [Axis.horizontal, Axis.vertical],
      labelBuilder: (value) => value.name,
    );

    return Center(
      child: ActionsUtils.getButtonByType(
        buttonType: buttonType,
        disabled: disabled,
        axis: axis,
        buttonSize: buttonSize,
        text: text,
        leftIcon: ActionsUtils.getBasketballIconOrNull(show: showLeftIcon),
        rightIcon: ActionsUtils.getBasketballIconOrNull(show: showRigtIcon),
        colorMode: colorMode,
      ),
    );
  }
}
