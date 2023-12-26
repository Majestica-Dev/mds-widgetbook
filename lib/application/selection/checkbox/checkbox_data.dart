part of 'checkbox_data_cubit.dart';

class CheckBoxData with EquatableMixin {
  final bool value;
  final bool enabled;

  CheckBoxData({
    this.value = true,
    this.enabled = true,
  });

  @override
  List<Object?> get props => [value, enabled];
}
