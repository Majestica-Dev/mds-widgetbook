import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mds_widget_book/presentation/theme/colors/widgets/color_scheme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/application/theme/theme_cubit.dart';

@widgetbook.UseCase(
  path: 'Theme',
  name: 'Color Theme',
  type: MDSTheme,
)
Widget colors(BuildContext context) {
  final t = context.mdsTheme;

  final MDSColors colors = MDSColors(
    background: context.knobs.color(
      label: 'Background',
      initialValue: t.colors.background,
    ),
    surface: context.knobs.color(
      label: 'Surface',
      initialValue: t.colors.surface,
    ),
    highContainerContent: context.knobs.color(
      label: 'High-container-content',
      initialValue: t.colors.highContainerContent,
    ),
    primary: context.knobs.color(
      label: 'Primary',
      initialValue: t.colors.primaryHighContainer,
    ),
    neutral: context.knobs.color(
      label: 'Neutral',
      initialValue: t.colors.neutralHighContent,
    ),
  );

  // TODO : (Narek) equtable for colors not working
  context.read<ThemeCubit>().setColor(colors: colors);

  return const MDSColorScheme(); //TODO
}
