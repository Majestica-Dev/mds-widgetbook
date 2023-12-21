import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/domain/actions/button_type.dart';
import 'package:mds_widget_book/presentation/actions/buttons/widgets/buttons_collection_tile.dart';

class ButtonsCollection extends StatelessWidget {
  const ButtonsCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ButtonsCollectionTile(
              buttonType: ButtonType.primary,
            ),
            SizedBox(width: 10),
            ButtonsCollectionTile(
              buttonType: ButtonType.primary,
              disabled: true,
            ),
            SizedBox(width: 50),
            ButtonsCollectionTile(
              buttonType: ButtonType.secondary,
            ),
            SizedBox(width: 10),
            ButtonsCollectionTile(
              buttonType: ButtonType.secondary,
              disabled: true,
            ),
            SizedBox(width: 50),
            ButtonsCollectionTile(
              buttonType: ButtonType.secondary,
              colorMode: ColorMode.neutral,
            ),
            SizedBox(width: 10),
            ButtonsCollectionTile(
              buttonType: ButtonType.secondary,
              disabled: true,
              colorMode: ColorMode.neutral,
            ),
            SizedBox(width: 50),
            ButtonsCollectionTile(
              buttonType: ButtonType.text,
            ),
            SizedBox(width: 10),
            ButtonsCollectionTile(
              buttonType: ButtonType.text,
              disabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
