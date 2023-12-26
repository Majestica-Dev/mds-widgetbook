import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';

class ThemeCubit extends Cubit<MDSThemeData> {
  ThemeCubit()
      : super(
          MDSThemeData(
            colors: MDSColors.light(
              background: const Color(0xffF8F8F8),
              surface: const Color(0xffFFFFFF),
              primary: const Color(0xff0766EB),
              neutral: const Color(0xff000000),
              highContainerContent: const Color(0xffFFFFFF),
            ),
            textTheme: MDSTextThemeData.defaultMDSThemeData,
            spacing: const MDSSpacing(),
          ),
        );

  void setColor({
    required MDSColors colors,
  }) {
    final newState = state.copyWith(colors: colors);
    if (newState != state) {
      emit(state.copyWith(colors: colors));
    }
  }

  void setSpace({required MDSSpacing spacing}) {
    final newState = state.copyWith(spacing: spacing);
    if (newState != state) {
      emit(
        state.copyWith(spacing: spacing),
      );
    }
  }
}
