import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../../application/theme/theme_cubit.dart';

@widgetbook.UseCase(
  name: 'Theme',
  type: MDSTheme,
)
Widget widgetBookThemeChooser(BuildContext context) {
  final theme = context.mdsTheme;

  final MDSSpacing spacing = MDSSpacing(
    context.knobs.double.input(
      label: 'Space',
      initialValue: theme.spacing.x1,
    ),
  );

  final MDSColors colors = MDSColors(
    background: context.knobs.color(
      label: 'Background',
      initialValue: theme.colors.background,
    ),
    surface: context.knobs.color(
      label: 'Surface',
      initialValue: theme.colors.surface,
    ),
    highContainerContent: context.knobs.color(
      label: 'High-container-content',
      initialValue: theme.colors.highContainerContent,
    ),
    primary: context.knobs.color(
      label: 'Primary',
      initialValue: theme.colors.primaryHighContainer,
    ),
    neutral: context.knobs.color(
      label: 'Neutral',
      initialValue: theme.colors.neutralHighContent,
    ),
  );
  //TODO:default value

  context.read<ThemeCubit>().setTheme(
        colors: colors,
        spacing: spacing,
      );

  return const SizedBox(); //TODO
}
