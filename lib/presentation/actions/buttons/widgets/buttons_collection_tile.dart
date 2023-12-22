import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/domain/actions/button_type.dart';
import 'package:mds_widget_book/presentation/actions/core/utils/action_utils.dart';

class ButtonsCollectionTile extends StatelessWidget {
  final ButtonType buttonType;
  final bool disabled;
  final ColorMode colorMode;

  const ButtonsCollectionTile({
    required this.buttonType,
    this.disabled = false,
    this.colorMode = ColorMode.primary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final buttonSize in ActionsUtils.getAbleButtonSizes(
          buttonType: buttonType,
        ))
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ActionsUtils.getButtonByType(
              disabled: disabled,
              buttonSize: buttonSize,
              colorMode: colorMode,
              buttonType: buttonType,
              text: 'Button',
              leftIcon: ActionsUtils.showBasketballIcon(),
              rightIcon: ActionsUtils.showBasketballIcon(),
            ),
          ),
      ],
    );
  }
}
