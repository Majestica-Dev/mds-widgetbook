import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

class ExampleDisplay extends StatelessWidget {
  final List<Widget> children;

  const ExampleDisplay({
    required this.children,
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 21),
            ...children,
          ],
        ),
      ),
    );
  }
}
