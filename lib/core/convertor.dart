import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

import '../domain/actions/button_type.dart';

abstract class Convertor {
  static MDSButtonSize stringToButtonSize(String size) {
    switch (size) {
      case 'L':
        return MDSButtonSize.L;
      case 'M':
        return MDSButtonSize.M;
      case 'S':
        return MDSButtonSize.S;
      case 'XS':
        return MDSButtonSize.XS;
      default:
        return MDSButtonSize.L;
    }
  }

  static ButtonType stringToButtonType(String size) {
    switch (size) {
      case 'Text':
        return ButtonType.text;
      case 'Primary':
        return ButtonType.primary;
      default:
        return ButtonType.secondary;
    }
  }

  static Axis stringToAxis(String axis) {
    switch (axis) {
      case 'Horizontal':
        return Axis.horizontal;
      case 'Vertical':
        return Axis.vertical;
      default:
        return Axis.horizontal;
    }
  }

  static ColorMode stringToColorMode(String colorMode) {
    switch (colorMode) {
      case 'Primary':
        return ColorMode.primary;
      default:
        return ColorMode.neutral;
    }
  }
}
