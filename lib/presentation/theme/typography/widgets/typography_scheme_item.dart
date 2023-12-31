import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_item.dart';

class TypographySchemeItem extends StatelessWidget {
  final String name;
  final TextStyle textStyle;

  const TypographySchemeItem({
    required this.name,
    required this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final neautralHighContent = context.mdsTheme.colors.neutralHighContent;

    return ExampleItem(
      children: [
        Text(
          name,
          style: TextStyle(color: neautralHighContent),
        ),
        Text(
          'Example Text',
          style: textStyle.copyWith(
            color: neautralHighContent,
          ),
        ),
      ],
    );
  }
}
