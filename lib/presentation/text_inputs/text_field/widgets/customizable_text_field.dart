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
    final IconDataProperty? trailingIconData = context.knobs.listOrNull(
      label: 'Trailing Icon',
      options: [
        null,
        IconDataProperty(
          'airplane',
          PhosphorIcons.airplane(),
        ),
        IconDataProperty(
          'alien',
          PhosphorIcons.alien(),
        ),
      ],
      labelBuilder: (value) {
        if (value != null) {
          return value.name!;
        } else {
          return '';
        }
      },
      initialOption: null,
    );

    final trailingIcon = trailingIconData == null
        ? null
        : PhosphorIcon(
            trailingIconData.value!,
          );

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
          trailingIconData: trailingIconData,
          errorMessage: errorMessage,
          successMessage: successMessage,
        );

    return SizedBox(
      width: 400,
      child: MDSTextField(
        label: label,
        hintText: hintText,
        trailingIcon: trailingIcon,
        errorMessage: errorMessage,
        successMessage: successMessage,
      ),
    );
  }
}
