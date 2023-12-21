import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

class MDSCheckboxAndToggleExampleItem extends StatelessWidget {
  final String title;
  final Widget child;

  const MDSCheckboxAndToggleExampleItem({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.mdsTheme.colors;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: colors.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
