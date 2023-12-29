import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';

class SpacingSchemeItem extends StatelessWidget {
  final double value;

  const SpacingSchemeItem({
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      children: [
        Container(
          color: t.colors.primaryMedContainer,
          height: 20,
          width: value,
        ),
        const Spacer(),
        Text(
          '${value / 4} space',
          style: t.textTheme.bodySRegular.copyWith(
            color: t.colors.neutralHighContent,
          ),
        ),
        const Spacer(),
        Text(
          '$value px',
          style: t.textTheme.bodyMRegular.copyWith(
            color: t.colors.neutralHighContent,
          ),
        ),
      ],
    );
  }
}
