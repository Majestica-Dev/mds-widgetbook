import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/containment/bottom_sheet/widgets/bottom_sheet_item.dart';

class BottomSheetExamples extends StatelessWidget {
  const BottomSheetExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Flexible(
            child: ButtomSheetItem(
              expand: true,
              body: Container(
                height: 746,
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
              header: MDSBottomSheetHeader(
                title: const Text('Analytics'),
                centerTitle: false,
                trailing: PhosphorIcon(
                  PhosphorIcons.x(),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: ButtomSheetItem(
              body: Container(
                height: 350,
                width: 800,
                color: Colors.deepPurple[300],
                child: const Center(
                  child: Text(
                    'Content',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              header: MDSBottomSheetHeader(
                title: const Text('Analytics'),
                centerTitle: false,
                trailing: PhosphorIcon(
                  PhosphorIcons.x(),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: ButtomSheetItem(
              showHandle: true,
              body: Container(
                height: 200,
                width: 800,
                color: Colors.deepPurpleAccent[700],
                child: const Center(
                  child: Text(
                    'Content',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
