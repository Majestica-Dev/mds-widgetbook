import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_item.dart';

class CheckboxAndToggleExample extends StatefulWidget {
  const CheckboxAndToggleExample({super.key});

  @override
  State<CheckboxAndToggleExample> createState() =>
      _CheckboxAndToggleExampleState();
}

class _CheckboxAndToggleExampleState extends State<CheckboxAndToggleExample> {
  bool toggleValue1 = false;
  bool toggleValue2 = true;

  bool checkBoxValue1 = false;
  bool chechkBoxValue2 = true;

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      body: Column(
        children: [
          const SizedBox(height: 21),
          //Toggle enabled
          ExampleItem(
            children: [
              const Text('Toggle of'),
              MDSToggle(
                value: toggleValue1,
                onChanged: (value) {
                  setState(() {
                    toggleValue1 = value;
                  });
                },
              ),
            ],
          ),
          ExampleItem(
            children: [
              const Text('Toggle on'),
              MDSToggle(
                value: toggleValue2,
                onChanged: (value) {
                  setState(() {
                    toggleValue2 = value;
                  });
                },
              ),
            ],
          ),

          //Toggle disapled
          ExampleItem(
            children: [
              const Text('Toggle of - disapled'),
              MDSToggle(
                value: false,
                enabled: false,
                onChanged: (value) {},
              ),
            ],
          ),
          ExampleItem(
            children: [
              const Text('Toggle on - disapled'),
              MDSToggle(
                value: true,
                enabled: false,
                onChanged: (value) {},
              ),
            ],
          ),

          //CheckBox unchecked
          ExampleItem(
            children: [
              const Text('CheckBox unchecked'),
              MDSCheckBox(
                onChanged: (value) {
                  setState(() {
                    checkBoxValue1 = value;
                  });
                },
                value: checkBoxValue1,
              ),
            ],
          ),
          ExampleItem(
            children: [
              const Text('CheckBox unchecked - disapled'),
              MDSCheckBox(
                value: false,
                enabled: false,
                onChanged: (value) {},
              ),
            ],
          ),

          //CheckBox checked
          ExampleItem(
            children: [
              const Text('CheckBox checked'),
              MDSCheckBox(
                value: chechkBoxValue2,
                onChanged: (value) {
                  setState(() {
                    chechkBoxValue2 = value;
                  });
                },
              ),
            ],
          ),
          ExampleItem(
            children: [
              const Text('CheckBox checked - disapled'),
              MDSCheckBox(
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
