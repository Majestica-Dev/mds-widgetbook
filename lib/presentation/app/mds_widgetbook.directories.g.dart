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
import 'package:mds_widget_book/presentation/containment/bottom_sheet/bottom_sheet.dart'
    as _i4;
import 'package:mds_widget_book/presentation/containment/divider/divider.dart'
    as _i5;
import 'package:mds_widget_book/presentation/example_screens/example_screens.dart'
    as _i6;
import 'package:mds_widget_book/presentation/navigation/bottom_nav_bar/bottom_nav_bar.dart'
    as _i7;
import 'package:mds_widget_book/presentation/navigation/dot_tab_bar/dot_tab_bar.dart'
    as _i8;
import 'package:mds_widget_book/presentation/navigation/tab_bar/tab_bar.dart'
    as _i9;
import 'package:mds_widget_book/presentation/selection/checkbox_toggle/checkbox_toggle.dart'
    as _i10;
import 'package:mds_widget_book/presentation/text_inputs/text_field/text_field.dart'
    as _i11;
import 'package:mds_widget_book/presentation/theme/colors/colors.dart' as _i12;
import 'package:mds_widget_book/presentation/theme/spacing/spacing.dart'
    as _i13;
import 'package:mds_widget_book/presentation/theme/typography/typography.dart'
    as _i14;
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
    name: 'Containment',
    children: [
      _i1.WidgetbookComponent(
        name: 'Containment',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Bottom Sheet',
            builder: _i4.bottomSheet,
          ),
          _i1.WidgetbookUseCase(
            name: 'Divider',
            builder: _i5.divider,
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'Example Screens',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'ExampleScreens',
        useCase: _i1.WidgetbookUseCase(
          name: 'ExampleScreens',
          builder: _i6.exampleScreens,
        ),
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
            builder: _i7.bottomNavBar,
          ),
          _i1.WidgetbookUseCase(
            name: 'DotTabBar',
            builder: _i8.tapBar,
          ),
          _i1.WidgetbookUseCase(
            name: 'TabBar',
            builder: _i9.tapBar,
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
          builder: _i10.checkboxAndToggle,
        ),
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'Text Inputs',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'TextField',
        useCase: _i1.WidgetbookUseCase(
          name: 'TextField',
          builder: _i11.textField,
        ),
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'Theme',
    children: [
      _i1.WidgetbookComponent(
        name: 'MDSTheme',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Colors',
            builder: _i12.colors,
          ),
          _i1.WidgetbookUseCase(
            name: 'Spacing',
            builder: _i13.spacing,
          ),
          _i1.WidgetbookUseCase(
            name: 'Typography',
            builder: _i14.typography,
          ),
        ],
      )
    ],
  ),
];
