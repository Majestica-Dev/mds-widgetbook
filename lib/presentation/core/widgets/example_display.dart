import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

class ExampleDisplay extends StatelessWidget {
  final Widget body;
  final double width;
  final double? height;
  final Color? backgroundColor;

  const ExampleDisplay({
    required this.body,
    this.width = 390,
    this.height = 844,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.mdsTheme.colors;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? colors.background,
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
