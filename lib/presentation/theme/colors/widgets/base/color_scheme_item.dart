import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

class ColorsSchemeItem extends StatelessWidget {
  final String name;
  final Color color;

  const ColorsSchemeItem({
    required this.color,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.mdsTheme.textTheme;
    final colors = context.mdsTheme.colors;

    return Container(
      width: double.infinity,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: textTheme.bodyMRegular.copyWith(
            color: colors.neutralHighContent,
          ),
        ),
      ),
    );
  }
}
