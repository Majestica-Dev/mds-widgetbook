import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

class ExampleItem extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final EdgeInsetsGeometry padding;
  final Axis axis;
  final Color? backColor;

  const ExampleItem({
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.padding = const EdgeInsets.only(left: 16, right: 16, bottom: 12),
    this.backColor,
    this.axis = Axis.horizontal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.mdsTheme.colors;
    return Padding(
      padding: padding,
      child: Container(
        width: 358,
        decoration: BoxDecoration(
          color: backColor ?? colors.surface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: axis == Axis.horizontal
              ? Row(
                  mainAxisAlignment: mainAxisAlignment,
                  children: children,
                )
              : Column(
                  children: children,
                ),
        ),
      ),
    );
  }
}
