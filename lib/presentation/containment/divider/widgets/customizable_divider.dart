import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableDivider extends StatelessWidget {
  const CustomizableDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final DividerSize size = context.knobs.list(
      label: 'Size',
      options: [DividerSize.M, DividerSize.S],
      labelBuilder: (value) => value.name,
    );
    final DividerContrast contrast = context.knobs.list(
      label: 'Contrast',
      options: [DividerContrast.med, DividerContrast.low],
      labelBuilder: (value) => value.name,
    );

    return SizedBox(
      width: 300,
      child: MDSDivider(
        size: size,
        contrast: contrast,
      ),
    );
  }
}
