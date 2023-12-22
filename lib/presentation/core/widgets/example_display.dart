import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

class ExampleDisplay extends StatelessWidget {
  final Widget body;

  const ExampleDisplay({
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.mdsTheme.colors;
    return Container(
      height: 844,
      width: 390,
      decoration: BoxDecoration(
        color: colors.background,
        border: Border.all(color: colors.neutralLowContent),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: body,
      ),
    );
  }
}
