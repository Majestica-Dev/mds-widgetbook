part of 'theme_cubit.dart';

//TODO : default theme'
class ThemeState {
  final MDSColors colors;
  final MDSTextThemeData textTheme;
  final MDSSpacing spacing;

  ThemeState({
    required this.colors,
    required this.textTheme,
    required this.spacing,
  });

  MDSThemeData get theme {
    return MDSThemeData(
      colors: colors,
      textTheme: textTheme,
      spacing: spacing,
    );
  }
}
