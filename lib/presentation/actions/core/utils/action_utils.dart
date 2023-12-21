import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

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

  static List<String> getAbleButtonSizesAsString({
    required ButtonType buttonType,
  }) {
    switch (buttonType) {
      case ButtonType.text:
        return ['L', 'M'];

      default:
        return ['L', 'M', 'S', 'XS'];
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
    switch (buttonType.name) {
      case 'primary':
        return PrimaryButton(
          disabled: disabled,
          axis: axis,
          onPressed: () {},
          buttonSize: buttonSize,
          text: text,
          leftIcon: leftIcon,
          rightIcon: rightIcon,
        );
      case 'secondary':
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
      default:
        return MDSTextButton(
          onPressed: () {},
          text: text ?? '',
          size: buttonSize,
          disabled: disabled,
        );
    }
  }

  static Widget getCircleButtonByType({
    required ButtonType buttonType,
  }) {
    switch (buttonType.name) {
      case 'primary':
        return PrimaryCircleButton(
          onPressed: () {},
          child: PhosphorIcon(
            PhosphorIcons.power(PhosphorIconsStyle.bold),
          ),
        );

      default:
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

  static PhosphorIcon? showBasketballIcon({show = true}) {
    if (show) {
      return PhosphorIcon(
        PhosphorIcons.basketball(),
      );
    }
    return null;
  }
}
