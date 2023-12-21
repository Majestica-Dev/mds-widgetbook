// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mds_widget_book/presentation/actions/buttons/buttons.dart'
    as _i2;
import 'package:mds_widget_book/presentation/actions/checkbox_toggle/checkbox_toggle.dart'
    as _i3;
import 'package:mds_widget_book/presentation/theme/theme.dart' as _i4;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'Actions',
    children: [
      _i1.WidgetbookComponent(
        name: 'Widget',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Buttons',
            builder: _i2.buttons,
          ),
          _i1.WidgetbookUseCase(
            name: 'CheckBox and Toggle',
            builder: _i3.checkboxAndToggle,
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'theme',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'MDSTheme',
        useCase: _i1.WidgetbookUseCase(
          name: 'Theme',
          builder: _i4.widgetBookThemeChooser,
        ),
      )
    ],
  ),
];
