part of 'theme_cubit.dart';

//TODO : default theme'
class ThemeState with EquatableMixin {
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

  ThemeState copyWith({
    MDSColors? colors,
    MDSTextThemeData? textTheme,
    MDSSpacing? spacing,
  }) {
    return ThemeState(
      colors: colors ?? this.colors,
      textTheme: textTheme ?? this.textTheme,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  List<Object?> get props => [colors, textTheme, spacing];
}
