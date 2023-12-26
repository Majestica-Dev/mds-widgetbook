import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class TextFieldExamples extends StatelessWidget {
  TextFieldExamples({super.key});

  @override
  Widget build(BuildContext context) {
    print('ex');
    return ExampleDisplay(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          MDSTextField(
            label: 'Text Label',
            hintText: 'Example Text',
          ),
          const SizedBox(height: 20),
          MDSTextField(
            label: 'Text Label',
            hintText: 'Example Text',
            errorMessage: 'Error Message',
          ),
          const SizedBox(height: 20),
          MDSTextField(
            label: 'Text Label',
            hintText: 'Example Text',
            successMessage: 'Succes Message',
          ),
          const SizedBox(height: 20),
          MDSTextField(
            trailingIcon: PhosphorIcon(PhosphorIcons.alien()),
            label: 'Text Label',
            hintText: 'Example Text',
          ),
          const SizedBox(height: 20),
          MDSSearchField(
            key: UniqueKey(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
