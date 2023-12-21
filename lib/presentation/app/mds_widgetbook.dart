import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:mds_widget_book/presentation/app/providers/global_providers.dart';
import 'package:mds_widget_book/application/theme/theme_cubit.dart';
import 'mds_widgetbook.directories.g.dart';

@widgetbook.App()
class MDSWidgetbook extends StatelessWidget {
  const MDSWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalProviders(
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MDSTheme(
            data: MDSThemeData(
              colors: themeState.colors,
              textTheme: themeState.textTheme,
              spacing: themeState.spacing,
            ),
            child: Widgetbook.material(
              directories: directories,
            ),
          );
        },
      ),
    );
  }
}
