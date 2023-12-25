import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/core/extensions/color_extension.dart';

class ColorSchemeItem extends StatelessWidget {
  final String mainToken;
  final String childToken;
  final Color color;

  const ColorSchemeItem({
    required this.color,
    required this.mainToken,
    required this.childToken,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.mdsTheme.textTheme;
    return Row(
      children: [
        SizedBox(
          width: 180,
          child: Text(
            mainToken,
            style: textTheme.bodyMRegular,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 130,
          child: Text(
            '$childToken-100',
            style: textTheme.bodyMRegular,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 100,
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(color.toHexString),
            ],
          ),
        )
      ],
    );
  }
}
