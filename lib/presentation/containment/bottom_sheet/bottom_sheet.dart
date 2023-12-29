import 'package:flutter/material.dart';
import 'package:mds_widget_book/core/helper_types.dart';
import 'package:mds_widget_book/presentation/containment/bottom_sheet/widgets/bottom_sheet_examples.dart';
import 'package:mds_widget_book/presentation/containment/bottom_sheet/widgets/customizable_bottom_sheet_item.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  path: 'Containment',
  name: 'Bottom Sheet',
  type: Containment,
)
Widget bottomSheet(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 60),
          CustomizableBottomSheet(),
          SizedBox(height: 60),
          BottomSheetExamples(),
          SizedBox(height: 60),
        ],
      ),
    ),
  );
}
