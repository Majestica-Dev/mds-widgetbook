import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/presentation/core/widgets/example_display.dart';

class TextFieldExamples extends StatelessWidget {
  const TextFieldExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return ExampleDisplay(
      height: null,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MDSSearchField(
              controller: TextEditingController(),
              focusNode: FocusNode(),
            ),
            const SizedBox(height: 20),
            MDSSearchField(
              controller: TextEditingController(text: 'Typing'),
              focusNode: FocusNode(),
            ),
            const SizedBox(height: 20),
            MDSTextField(
              label: 'Text Label',
              hintText: 'Example Text',
              focusNode: FocusNode(),
            ),
            const SizedBox(height: 20),
            MDSTextField(
              label: 'Text Label',
              hintText: 'Example Text',
              errorMessage: 'Error Message',
              focusNode: FocusNode(),
            ),
            const SizedBox(height: 20),
            MDSTextField(
              label: 'Text Label',
              hintText: 'Example Text',
              successMessage: 'Succes Message',
              focusNode: FocusNode(),
            ),
            const SizedBox(height: 20),
            MDSTextField(
              trailingIcon: PhosphorIcon(PhosphorIcons.alien()),
              label: 'Text Label',
              hintText: 'Example Text',
              focusNode: FocusNode(),
            ),
            const SizedBox(height: 20),
            MDSTextField(
              hintText: 'Example Text',
              errorMessage: 'Error Message',
              focusNode: FocusNode(),
              controller: TextEditingController(text: 'Filled Input'),
            ),
            const SizedBox(height: 20),
            MDSTextField(
              hintText: 'Example Text',
              successMessage: 'Succes Message',
              focusNode: FocusNode(),
              controller: TextEditingController(text: 'Filled Input'),
            ),
            const SizedBox(height: 20),
            MDSTextField(
              hintText: 'Example Text',
              focusNode: FocusNode(),
              controller: TextEditingController(text: 'Filled Input'),
            ),
          ],
        ),
      ),
    );
  }
}
