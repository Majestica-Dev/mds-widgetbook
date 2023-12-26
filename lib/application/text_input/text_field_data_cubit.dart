import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_field_data.dart';

class TextFieldDataCubit extends Cubit<TextFieldData> {
  TextFieldDataCubit() : super(TextFieldData());

  void setData({
    final String? label,
    final String? hintText,
    final IconDataProperty? trailingIconData,
    final String? errorMessage,
    final String? successMessage,
  }) {
    final newState = TextFieldData(
      label: label,
      hintText: hintText,
      trailingIconData: trailingIconData,
      errorMessage: errorMessage,
      successMessage: successMessage,
    );

    if (state != newState) {
      emit(newState);
    }
  }
}
