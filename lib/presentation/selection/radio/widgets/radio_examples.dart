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
  bool radioOnValue = true;
  bool radioOffValue = false;

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      height: null,
      width: null,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 21),
          ExampleItem(
            children: [
              const Text('Radio on'),
              RadioButton(
                onChanged: (value) {
                  setState(() {
                    radioOnValue = value;
                  });
                },
                value: radioOnValue,
              ),
            ],
          ),
          ExampleItem(
            children: [
              const Text('Radio off'),
              RadioButton(
                onChanged: (value) {
                  setState(() {
                    radioOffValue = value;
                  });
                },
                value: radioOffValue,
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
