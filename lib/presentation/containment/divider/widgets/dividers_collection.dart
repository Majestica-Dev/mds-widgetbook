import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class DividersCollection extends StatelessWidget {
  const DividersCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleDisplay(
      width: 390,
      height: null,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: MDSDivider()),
                SizedBox(width: 15),
                Flexible(
                  child: MDSDivider(
                    contrast: DividerContrast.low,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: MDSDivider(
                    size: DividerSize.S,
                  ),
                ),
                SizedBox(width: 15),
                Flexible(
                  child: MDSDivider(
                    size: DividerSize.S,
                    contrast: DividerContrast.low,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
