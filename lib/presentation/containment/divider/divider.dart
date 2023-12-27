import 'package:flutter/widgets.dart';
import 'package:mds_widget_book/core/helper_types.dart';
import 'package:mds_widget_book/presentation/containment/divider/widgets/customizable_divider.dart';
import 'package:mds_widget_book/presentation/containment/divider/widgets/divider_example.dart';
import 'package:mds_widget_book/presentation/containment/divider/widgets/dividers_collection.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Containment',
  name: 'Divider',
  type: Containment,
)
Widget divider(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(60),
    child: Row(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              DividersCollection(),
              SizedBox(
                height: 30,
              ),
              DividerExample(),
            ],
          ),
        ),
        SizedBox(width: 80),
        CustomizableDivider(),
      ],
    ),
  );
}
