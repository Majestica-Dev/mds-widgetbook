import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mds_widget_book/domain/actions/button_type.dart';

part 'buttons_data_state.dart';

class ButtonsDataCubit extends Cubit<ButtonsDataState> {
  ButtonsDataCubit() : super(ButtonsDataState());

  void setData({
    required final ButtonType buttonType,
    required final bool disabled,
    required final String text,
    required final bool showLeftIcon,
    required final bool showRigtIcon,
    required final MDSButtonSize buttonSize,
    required final ColorMode colorMode,
    required final Axis axis,
  }) {
    final newState = ButtonsDataState(
      buttonType: buttonType,
      disabled: disabled,
      text: text,
      showLeftIcon: showLeftIcon,
      showRigtIcon: showRigtIcon,
      buttonSize: buttonSize,
      colorMode: colorMode,
      axis: axis,
    );
    if (state != newState) {
      emit(newState);
    }
  }
}
