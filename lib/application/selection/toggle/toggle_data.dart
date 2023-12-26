part of 'toggle_data_cubit.dart';

class ToggleData with EquatableMixin {
  final bool value;
  final bool enabled;
  final double width;
  final double thumbSize;

  ToggleData({
    this.value = true,
    this.enabled = true,
    this.width = 56,
    this.thumbSize = 28,
  });

  @override
  List<Object?> get props => [value, enabled, width, thumbSize];
}
