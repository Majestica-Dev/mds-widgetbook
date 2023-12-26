import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'checkbox_data.dart';

class CheckBoxDataCubit extends Cubit<CheckBoxData> {
  CheckBoxDataCubit() : super(CheckBoxData());

  void setData({
    required final bool value,
    required final bool enabled,
  }) {
    final newState = CheckBoxData(
      value: value,
      enabled: enabled,
    );

    if (state != newState) {
      emit(newState);
    }
  }
}
