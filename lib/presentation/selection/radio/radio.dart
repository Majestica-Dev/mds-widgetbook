import 'package:flutter/widgets.dart';
import 'package:mds_widget_book/core/helper_types.dart';
import 'package:mds_widget_book/presentation/selection/radio/widgets/customizable_radio.dart';
import 'package:mds_widget_book/presentation/selection/radio/widgets/radio_examples.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Selection',
  name: 'Radio',
  type: Selector,
)
Widget radio(BuildContext context) {
  return const Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: RadioExamples()),
        SizedBox(width: 50),
        CustomizableRadio(),
      ],
    ),
  );
}
