import 'package:flutter/widgets.dart';

import 'package:widgetbook/widgetbook.dart';

import 'package:mds_widget_book/core/convertor.dart';
import 'package:mds_widget_book/domain/actions/button_type.dart';
import 'package:mds_widget_book/presentation/actions/core/utils/action_utils.dart';

class CustomizableCircleButton extends StatelessWidget {
  const CustomizableCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final String buttonTypeOption = context.knobs.list(
      label: 'Type',
      options: [
        'Primary',
        'Secondary',
      ],
    );
    final ButtonType buttonType = Convertor.stringToButtonType(
      buttonTypeOption,
    );

    return ActionsUtils.getCircleButtonByType(buttonType: buttonType);
  }
}
