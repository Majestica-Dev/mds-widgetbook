import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/domain/actions/button_type.dart';
import 'package:mds_widget_book/presentation/actions/buttons/widgets/buttons_example_item.dart';

class MDSButtonsExampleTile extends StatelessWidget {
  const MDSButtonsExampleTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ButtonsExampleItem(
              buttonType: ButtonType.primary,
            ),
            SizedBox(width: 10),
            ButtonsExampleItem(
              buttonType: ButtonType.primary,
              disabled: true,
            ),
            SizedBox(width: 50),
            ButtonsExampleItem(
              buttonType: ButtonType.secondary,
            ),
            SizedBox(width: 10),
            ButtonsExampleItem(
              buttonType: ButtonType.secondary,
              disabled: true,
            ),
            SizedBox(width: 50),
            ButtonsExampleItem(
              buttonType: ButtonType.secondary,
              colorMode: ColorMode.neutral,
            ),
            SizedBox(width: 10),
            ButtonsExampleItem(
              buttonType: ButtonType.secondary,
              disabled: true,
              colorMode: ColorMode.neutral,
            ),
            SizedBox(width: 50),
            ButtonsExampleItem(
              buttonType: ButtonType.text,
            ),
            SizedBox(width: 10),
            ButtonsExampleItem(
              buttonType: ButtonType.text,
              disabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
