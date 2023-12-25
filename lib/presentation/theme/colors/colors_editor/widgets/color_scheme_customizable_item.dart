import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

import 'package:mds_widget_book/core/extensions/color_extension.dart';

class ColorSchemeCustomizableItem extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final double opacity;
  final String mainToken;
  final String childToken;
  final Color color;

  const ColorSchemeCustomizableItem({
    required this.onChanged,
    required this.color,
    required this.mainToken,
    required this.childToken,
    required this.opacity,
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
          child: Row(
            children: [
              Text(
                '$childToken-',
                style: context.mdsTheme.textTheme.bodyMRegular,
              ),
              SizedBox(
                width: 35,
                height: 20,
                child: TextFormField(
                  onChanged: onChanged,
                  initialValue: '${opacity * 100}',
                  style: context.mdsTheme.textTheme.bodyMRegular,
                  inputFormatters: [
                    NumberTextInputFormatter(
                      integerDigits: 10,
                      decimalDigits: 0,
                      maxValue: '100',
                      decimalSeparator: '.',
                      groupDigits: 3,
                      groupSeparator: ',',
                      allowNegative: false,
                      overrideDecimalPoint: true,
                      insertDecimalPoint: false,
                      insertDecimalDigits: true,
                    ),
                  ],
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
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
              const SizedBox(width: 12),
              Text(color.toHexString),
            ],
          ),
        )
      ],
    );
  }
}
