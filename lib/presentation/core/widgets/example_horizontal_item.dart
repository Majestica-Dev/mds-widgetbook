import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

class ExampleHorizontalItem extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;

  const ExampleHorizontalItem({
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.mdsTheme.colors;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: Container(
        width: 358,
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: children,
          ),
        ),
      ),
    );
  }
}
