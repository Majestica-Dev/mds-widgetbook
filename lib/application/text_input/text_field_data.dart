part of 'text_field_data_cubit.dart';

class TextFieldData with EquatableMixin {
  final String? label;
  final String? hintText;
  final bool showTrailingIcon;
  final String? errorMessage;
  final String? successMessage;

  TextFieldData({
    this.label = 'Label Text',
    this.hintText = 'Hint Text',
    this.showTrailingIcon = false,
    this.errorMessage,
    this.successMessage,
  });

  @override
  List<Object?> get props => [
        label,
        hintText,
        showTrailingIcon,
        errorMessage,
        successMessage,
      ];
}
