import 'package:majestica_ds/majestica_ds.dart';

extension MDSThemeDataExtension on MDSThemeData {
  MDSThemeData copyWith(
      {MDSColors? colors, MDSTextThemeData? textTheme, MDSSpacing? spacing}) {
    return MDSThemeData(
        colors: colors ?? this.colors,
        textTheme: textTheme ?? this.textTheme,
        spacing: spacing ?? this.spacing);
  }
}
