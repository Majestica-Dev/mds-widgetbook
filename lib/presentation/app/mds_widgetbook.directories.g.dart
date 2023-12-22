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
import 'package:mds_widget_book/presentation/actions/circle_button/circle_button.dart'
    as _i3;
import 'package:mds_widget_book/presentation/navigation/bottom_nav_bar/bottom_nav_bar.dart'
    as _i4;
import 'package:mds_widget_book/presentation/navigation/dot_tab_bar/dot_tab_bar.dart'
    as _i5;
import 'package:mds_widget_book/presentation/navigation/tab_bar/tab_bar.dart'
    as _i6;
import 'package:mds_widget_book/presentation/selection/checkbox_toggle/checkbox_toggle.dart'
    as _i7;
import 'package:mds_widget_book/presentation/theme/theme.dart' as _i8;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'Actions',
    children: [
      _i1.WidgetbookComponent(
        name: 'Button',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Buttons',
            builder: _i2.buttons,
          ),
          _i1.WidgetbookUseCase(
            name: 'Circle Button',
            builder: _i3.buttons,
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'Navigation',
    children: [
      _i1.WidgetbookComponent(
        name: 'Bar',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'BottomNavBar',
            builder: _i4.tapBar,
          ),
          _i1.WidgetbookUseCase(
            name: 'DotTabBar',
            builder: _i5.tapBar,
          ),
          _i1.WidgetbookUseCase(
            name: 'TabBar',
            builder: _i6.tapBar,
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'Selection',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'Selector',
        useCase: _i1.WidgetbookUseCase(
          name: 'CheckBox and Toggle',
          builder: _i7.checkboxAndToggle,
        ),
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
          builder: _i8.widgetBookThemeChooser,
        ),
      )
    ],
  ),
];
