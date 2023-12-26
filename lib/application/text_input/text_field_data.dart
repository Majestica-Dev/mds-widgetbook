part of 'text_field_data_cubit.dart';

class TextFieldData with EquatableMixin {
  final String? label;
  final String? hintText;
  final IconDataProperty? trailingIconData;
  final String? errorMessage;
  final String? successMessage;

  TextFieldData({
    this.label = 'Label Text',
    this.hintText = 'Hint Text',
    this.trailingIconData,
    this.errorMessage,
    this.successMessage,
  });

  @override
  List<Object?> get props => [
        label,
        hintText,
        trailingIconData,
        errorMessage,
        successMessage,
      ];
}
