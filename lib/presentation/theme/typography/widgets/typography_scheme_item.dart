import 'package:flutter/widgets.dart';
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
    return ExampleItem(
      children: [
        Text(name),
        Text(
          'example text',
          style: textStyle,
        ),
      ],
    );
  }
}
