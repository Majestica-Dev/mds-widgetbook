import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_item.dart';

class RadioExamples extends StatefulWidget {
  const RadioExamples({super.key});

  @override
  State<RadioExamples> createState() => _RadioExamplesState();
}

class _RadioExamplesState extends State<RadioExamples> {
  bool radio1Value = true;
  bool radio2Value = false;

  @override
  Widget build(BuildContext context) {
    final Color primaryHighContent = context.mdsTheme.colors.primaryHighContent;

    final BoxBorder? radio1Border =
        radio1Value ? Border.all(color: primaryHighContent) : null;
    final BoxBorder? radio2Border =
        radio2Value ? Border.all(color: primaryHighContent) : null;
    return ExampleDisplay(
      height: null,
      width: null,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 21),
          ExampleItem(
            border: radio1Border,
            children: [
              const Text('Radio on'),
              RadioButton(
                onChanged: (value) {
                  setState(() {
                    radio1Value = value;
                  });
                },
                value: radio1Value,
              )
            ],
          ),
          ExampleItem(
            border: radio2Border,
            children: [
              const Text('Radio off'),
              RadioButton(
                onChanged: (value) {
                  setState(() {
                    radio2Value = value;
                  });
                },
                value: radio2Value,
              ),
            ],
          ),
          ExampleItem(
            children: [
              const Text('Radio disapled'),
              RadioButton(
                enabled: false,
                value: true,
                onChanged: (value) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
