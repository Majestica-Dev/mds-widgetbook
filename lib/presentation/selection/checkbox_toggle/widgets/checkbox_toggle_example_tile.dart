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
  bool toggleOfValue = false;
  bool toggleOnValue = true;

  bool checkBoxUnCheckedValue = false;
  bool chechkBoxCheckedValue = true;

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
                value: toggleOfValue,
                onChanged: (value) {
                  setState(() {
                    toggleOfValue = value;
                  });
                },
              ),
            ],
          ),
          ExampleItem(
            children: [
              const Text('Toggle on'),
              MDSToggle(
                value: toggleOnValue,
                onChanged: (value) {
                  setState(() {
                    toggleOnValue = value;
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
                    checkBoxUnCheckedValue = value;
                  });
                },
                value: checkBoxUnCheckedValue,
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
                value: chechkBoxCheckedValue,
                onChanged: (value) {
                  setState(() {
                    chechkBoxCheckedValue = value;
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
