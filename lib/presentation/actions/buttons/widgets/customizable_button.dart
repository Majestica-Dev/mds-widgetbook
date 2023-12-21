import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/core/convertor.dart';
import 'package:mds_widget_book/domain/actions/button_type.dart';
import 'package:mds_widget_book/presentation/actions/core/utils/action_utils.dart';

import 'package:widgetbook/widgetbook.dart';

class CustomizableButton extends StatelessWidget {
  const CustomizableButton({super.key});

  @override
  Widget build(BuildContext context) {
    final String buttonTypeOption = context.knobs.list(
      label: 'Type',
      options: [
        'Primary',
        'Secondary',
        'Text',
      ],
    );
    final ButtonType buttonType = Convertor.stringToButtonType(
      buttonTypeOption,
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

    final String buttonSizeOption = context.knobs.list(
      initialOption: 'M',
      label: 'Size',
      description: 'for text type is suported only L and M',
      options: ActionsUtils.getAbleButtonSizesAsString(buttonType: buttonType),
    );
    final MDSButtonSize buttonSize = Convertor.stringToButtonSize(
      buttonSizeOption,
    );

    final String colorModeOption = context.knobs.list(
      label: 'Color Mode',
      description: 'supports only  Secondary type',
      options: [
        'Primary',
        'Secondary',
      ],
    );

    final String axisOption = context.knobs.list(
      label: 'Axis',
      options: [
        'Horizontal',
        'Vertical',
      ],
    );
    final Axis axis = Convertor.stringToAxis(axisOption);

    ColorMode colorMode = Convertor.stringToColorMode(colorModeOption);
    return Center(
      child: ActionsUtils.getButtonByType(
        buttonType: buttonType,
        disabled: disabled,
        axis: axis,
        buttonSize: buttonSize,
        text: text,
        leftIcon: ActionsUtils.showBasketballIcon(show: showLeftIcon),
        rightIcon: ActionsUtils.showBasketballIcon(show: showRigtIcon),
        colorMode: colorMode,
      ),
    );
  }
}
