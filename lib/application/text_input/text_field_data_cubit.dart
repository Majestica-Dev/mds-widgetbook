import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_field_data.dart';

class TextFieldDataCubit extends Cubit<TextFieldData> {
  TextFieldDataCubit() : super(TextFieldData());

  void setData({
    final String? label,
    final String? hintText,
    final String? errorMessage,
    final String? successMessage,
    final bool showTrailingIcon = false,
  }) {
    final newState = TextFieldData(
      label: label,
      hintText: hintText,
      showTrailingIcon: showTrailingIcon,
      errorMessage: errorMessage,
      successMessage: successMessage,
    );

    if (state != newState) {
      emit(newState);
    }
  }
}
