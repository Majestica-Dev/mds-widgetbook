import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/application/containment/bottom_sheet/bottom_sheet_data_cubit.dart';

import 'package:mds_widget_book/presentation/containment/bottom_sheet/widgets/bottom_sheet_item.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableBottomSheet extends StatelessWidget {
  const CustomizableBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomSheetData = context.read<BottomSheetDataCubit>().state;

    final bool expand = context.knobs.boolean(
      label: 'Expand',
      initialValue: bottomSheetData.expand,
    );
    final bool enableDrag = context.knobs.boolean(
      label: 'Enable Drag',
      initialValue: bottomSheetData.enableDrag,
    );
    final bool isDismissible = context.knobs.boolean(
      label: 'Is Didmissible',
      initialValue: bottomSheetData.isDismissible,
    );
    final bool showHeader = context.knobs.boolean(
      label: 'Show Header',
      initialValue: bottomSheetData.showHeader,
    );
    final bool centerTitle = context.knobs.boolean(
      description: 'Title in Center',
      label: 'Header Title',
      initialValue: bottomSheetData.centerTitle,
    );
    final bool showLeading = context.knobs.boolean(
      label: 'Header Leading',
      initialValue: bottomSheetData.showLeading,
    );
    final bool showTrailing = context.knobs.boolean(
      label: 'Header Trailing',
      initialValue: bottomSheetData.showTrailing,
    );
    context.read<BottomSheetDataCubit>().setData(
          isDismissible: isDismissible,
          enableDrag: enableDrag,
          expand: expand,
          showHeader: showHeader,
          centerTitle: centerTitle,
          showLeading: showLeading,
          showTrailing: showTrailing,
        );

    Widget? showIcon({bool show = true}) {
      if (!show) return null;

      return Builder(
        builder: (context) => GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: PhosphorIcon(
            PhosphorIcons.x(),
            size: 16,
          ),
        ),
      );
    }

    return ButtomSheetItem(
      show: false,
      width: 380,
      body: Container(
        height: 300,
        width: 800,
        color: Colors.deepPurple,
        child: const Center(
          child: Text(
            'Content',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      header: showHeader
          ? MDSBottomSheetHeader(
              title: const Text('Analyctics'),
              centerTitle: centerTitle,
              trailing: showIcon(show: showTrailing),
              leading: showIcon(show: showLeading),
            )
          : null,
      enableDrag: enableDrag,
      expand: expand,
      showHandle: !showHeader,
      isDismissible: isDismissible,
    );
  }
}
