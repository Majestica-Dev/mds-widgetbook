import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/domain/actions/circle_button_type.dart';
import 'package:mds_widget_book/presentation/actions/circle_button/widgets/circle_button_example.dart';

import '../../../../domain/actions/button_type.dart';

abstract class ActionsUtils {
  static List<MDSButtonSize> getAbleButtonSizes({
    required ButtonType buttonType,
  }) {
    switch (buttonType) {
      case ButtonType.text:
        return [
          MDSButtonSize.L,
          MDSButtonSize.M,
        ];
      default:
        return MDSButtonSize.values;
    }
  }

  static Widget getButtonByType({
    required ButtonType buttonType,
    bool disabled = false,
    Axis axis = Axis.horizontal,
    MDSButtonSize buttonSize = MDSButtonSize.M,
    String? text,
    Widget? leftIcon,
    Widget? rightIcon,
    ColorMode colorMode = ColorMode.primary,
  }) {
    switch (buttonType) {
      case ButtonType.primary:
        return PrimaryButton(
          disabled: disabled,
          axis: axis,
          onPressed: () {},
          buttonSize: buttonSize,
          text: text,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );
      case ButtonType.secondary:
        return SecondaryButton(
          onPressed: () {},
          axis: axis,
          disabled: disabled,
          buttonSize: buttonSize,
          text: text,
          colorMode: colorMode,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );
      case ButtonType.text:
        return MDSTextButton(
          onPressed: () {},
          text: text ?? '',
          size: buttonSize,
          disabled: disabled,
        );
    }
  }

  static Widget getCircleButtonByType({
    required CircleButtonType circleButtonType,
  }) {
    switch (circleButtonType) {
      case CircleButtonType.primary:
        return PrimaryCircleButton(
          onPressed: () {},
          child: PhosphorIcon(
            PhosphorIcons.power(PhosphorIconsStyle.bold),
          ),
        );

      case CircleButtonType.secondary:
        return SecondaryCircleButton(
          onPressed: () {},
          child: PhosphorIcon(
            PhosphorIcons.power(
              PhosphorIconsStyle.bold,
            ),
          ),
        );
    }
  }

  static PhosphorIcon? getBasketballIconOrNull({show = true}) {
    if (show) {
      return PhosphorIcon(
        PhosphorIcons.basketball(),
      );
    }
    return null;
  }
}
