import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/application/text_input/text_field_data_cubit.dart';
import 'package:widgetbook/widgetbook.dart';

class CustomizableTextField extends StatelessWidget {
  const CustomizableTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final textFieldData = context.read<TextFieldDataCubit>().state;

    final String? label = context.knobs.stringOrNull(
      label: 'Label Text',
      initialValue: textFieldData.label,
    );
    final String? hintText = context.knobs.stringOrNull(
      label: 'Hint Text',
      initialValue: textFieldData.hintText,
    );
    final bool showTrailingIcon = context.knobs.boolean(
        label: 'Trailing Icon', initialValue: textFieldData.showTrailingIcon);
    final trailingIcon = showTrailingIcon
        ? PhosphorIcon(
            PhosphorIcons.anchor(),
          )
        : null;
    final String? errorMessage = context.knobs.stringOrNull(
      label: 'Error Message',
      initialValue: textFieldData.errorMessage,
    );
    final String? successMessage = context.knobs.stringOrNull(
      label: 'Succes Message',
      initialValue: textFieldData.successMessage,
    );

    context.read<TextFieldDataCubit>().setData(
          label: label,
          hintText: hintText,
          showTrailingIcon: showTrailingIcon,
          errorMessage: errorMessage,
          successMessage: successMessage,
        );

    return SizedBox(
      width: 400,
      child: MDSTextField(
        controller: TextEditingController(),
        label: label,
        hintText: hintText,
        trailingIcon: trailingIcon,
        errorMessage: errorMessage,
        successMessage: successMessage,
      ),
    );
  }
}
