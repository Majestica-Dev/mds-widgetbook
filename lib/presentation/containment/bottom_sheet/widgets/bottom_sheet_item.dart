import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class ButtomSheetItem extends StatelessWidget {
  final Widget body;
  final MDSBottomSheetHeader? header;
  final double borderRadius;
  final bool enableDrag;
  final bool isDismissible;
  final bool expand;
  final bool useSafeArea;
  final double? width;
  final bool showHandle;
  final bool show;

  const ButtomSheetItem({
    required this.body,
    this.header,
    this.width,
    this.borderRadius = 12,
    this.enableDrag = false,
    this.isDismissible = false,
    this.showHandle = false,
    this.expand = false,
    this.useSafeArea = false,
    this.show = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      width: width,
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: Builder(
            builder: (context) {
              Future.delayed(const Duration(milliseconds: 0)).then((value) {
                if (show) {
                  MDSBottomSheet.show(
                    context: context,
                    body: body,
                    header: header,
                    borderRadius: borderRadius,
                    isDismissible: isDismissible,
                    enableDrag: enableDrag,
                    expand: expand,
                    useSafeArea: useSafeArea,
                    showHandle: showHandle,
                  );
                }
              });
              return PrimaryButton(
                child: const Text('Show BottomSheet'),
                onPressed: () => MDSBottomSheet.show(
                  context: context,
                  body: body,
                  header: header,
                  borderRadius: borderRadius,
                  isDismissible: isDismissible,
                  enableDrag: enableDrag,
                  expand: expand,
                  useSafeArea: useSafeArea,
                  showHandle: showHandle,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
