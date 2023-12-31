import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

import 'package:widgetbook/widgetbook.dart';

import 'package:mds_widget_book/domain/actions/circle_button_type.dart';
import 'package:mds_widget_book/presentation/actions/core/utils/action_utils.dart';

class CustomizableCircleButton extends StatelessWidget {
  const CustomizableCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final CircleButtonType buttonType = context.knobs.list(
      label: 'Type',
      options: [
        CircleButtonType.primary,
        CircleButtonType.secondary,
      ],
      labelBuilder: (value) => value.name,
    );

    final ColorMode colorMode = context.knobs.list(
      label: 'Color mode',
      options: [ColorMode.primary, ColorMode.neutral],
      labelBuilder: (value) => value.name,
    );

    return ActionsUtils.getCircleButtonByType(
      circleButtonType: buttonType,
      colorMode: colorMode,
    );
  }
}
