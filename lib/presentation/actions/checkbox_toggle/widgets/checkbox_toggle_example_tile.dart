import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'checkbox_toggle_example_item.dart';

class CheckboxAndToggleExampleTile extends StatefulWidget {
  const CheckboxAndToggleExampleTile({super.key});

  @override
  State<CheckboxAndToggleExampleTile> createState() =>
      _CheckboxAndToggleExampleTileState();
}

class _CheckboxAndToggleExampleTileState
    extends State<CheckboxAndToggleExampleTile> {
  bool toggleOfValue = false;
  bool toggleOnValue = true;

  bool checkBoxUnCheckedValue = false;
  bool chechkBoxCheckedValue = true;

  @override
  Widget build(BuildContext context) {
    final theme = context.mdsTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colors.background,
        borderRadius: BorderRadius.circular(24),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Toggle enabled
            MDSCheckboxAndToggleExampleItem(
              title: 'Toggle of',
              child: MDSToggle(
                value: toggleOfValue,
                onChanged: (value) {
                  setState(() {
                    toggleOfValue = value;
                  });
                },
              ),
            ),
            MDSCheckboxAndToggleExampleItem(
              title: 'Toggle on',
              child: MDSToggle(
                value: toggleOnValue,
                onChanged: (value) {
                  setState(() {
                    toggleOnValue = value;
                  });
                },
              ),
            ),

            //Toggle disapled
            MDSCheckboxAndToggleExampleItem(
              title: 'Toggle of - disapled',
              child: MDSToggle(
                value: false,
                enabled: false,
                onChanged: (value) {},
              ),
            ),
            MDSCheckboxAndToggleExampleItem(
              title: 'Toggle on - disapled',
              child: MDSToggle(
                value: true,
                enabled: false,
                onChanged: (value) {},
              ),
            ),

            //CheckBox unchecked
            MDSCheckboxAndToggleExampleItem(
              title: 'CheckBox unchecked',
              child: MDSCheckBox(
                onChanged: (value) {
                  setState(() {
                    checkBoxUnCheckedValue = value;
                  });
                },
                value: checkBoxUnCheckedValue,
              ),
            ),
            MDSCheckboxAndToggleExampleItem(
              title: 'CheckBox unchecked - disapled',
              child: MDSCheckBox(
                value: false,
                enabled: false,
                onChanged: (value) {},
              ),
            ),

            //CheckBox checked
            MDSCheckboxAndToggleExampleItem(
              title: 'CheckBox checked',
              child: MDSCheckBox(
                value: chechkBoxCheckedValue,
                onChanged: (value) {
                  setState(() {
                    chechkBoxCheckedValue = value;
                  });
                },
              ),
            ),
            MDSCheckboxAndToggleExampleItem(
              title: 'CheckBox checked - disapled',
              child: MDSCheckBox(
                enabled: false,
                value: true,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
