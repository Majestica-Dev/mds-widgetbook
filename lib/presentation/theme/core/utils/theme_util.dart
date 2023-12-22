import 'dart:ui';

abstract class ThemeUtil {
  static String colorToHex(Color color) {
    return '#${color.value.toRadixString(16).substring(2)}';
  }
}
