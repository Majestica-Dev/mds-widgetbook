import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'toggle_data.dart';

class ToggleDataCubit extends Cubit<ToggleData> {
  ToggleDataCubit() : super(ToggleData());

  void setData({
    required final bool value,
    required final bool enabled,
    required final double width,
    required final double thumbSize,
  }) {
    final newState = ToggleData(
      value: value,
      enabled: enabled,
      width: width,
      thumbSize: thumbSize,
    );

    if (state != newState) {
      emit(newState);
    }
  }
}
