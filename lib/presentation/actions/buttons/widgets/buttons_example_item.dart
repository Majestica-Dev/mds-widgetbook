import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/actions/core/utils/action_utils.dart';
import '../../../../domain/actions/button_type.dart';

class ButtonsExampleItem extends StatelessWidget {
  final ButtonType buttonType;
  final bool disabled;
  final ColorMode colorMode;

  const ButtonsExampleItem({
    required this.buttonType,
    this.disabled = false,
    this.colorMode = ColorMode.primary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final buttonSize in ActionUtils.getAbleButtonSizes(
          buttonType: buttonType,
        ))
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ActionUtils.getButtonByType(
              disabled: disabled,
              buttonSize: buttonSize,
              colorMode: colorMode,
              buttonType: buttonType,
              text: 'Button',
            ),
          ),
      ],
    );
  }
}
