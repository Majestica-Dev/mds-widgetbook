import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'colors_form_state.dart';

class ColorsDataCubit extends Cubit<ColorsDataState> {
  ColorsDataCubit() : super(ColorsDataState());

  void setData({
    final double? primaryHighContainerOpacity,
    final double? primaryMedContainerOpacity,
    final double? primaryLowContainerOpacity,
    final double? primaryHighContentOpacity,
    final double? primaryLowContentOpacity,
    final double? primaryMedContentOpacity,
    final double? neutralHighContainerOpacity,
    final double? neutralMedContainerOpacity,
    final double? neutralLowContainerOpacity,
    final double? neutralHighContentOpacity,
    final double? neutralMedContentOpacity,
    final double? neutralLowContentOpacity,
    final Color? primary,
    final Color? neutral,
  }) {
    emit(
      state.copyWith(
        primaryHighContainerOpacity: primaryHighContainerOpacity,
        primaryMedContainerOpacity: primaryMedContainerOpacity,
        primaryLowContainerOpacity: primaryLowContainerOpacity,
        primaryHighContentOpacity: primaryHighContentOpacity,
        primaryLowContentOpacity: primaryLowContentOpacity,
        primaryMedContentOpacity: primaryMedContentOpacity,
        neutralHighContainerOpacity: neutralHighContainerOpacity,
        neutralMedContainerOpacity: neutralMedContainerOpacity,
        neutralLowContainerOpacity: neutralLowContainerOpacity,
        neutralHighContentOpacity: neutralHighContentOpacity,
        neutralMedContentOpacity: neutralMedContentOpacity,
        neutralLowContentOpacity: neutralLowContentOpacity,
        primary: primary,
        nuetral: neutral,
      ),
    );
  }
}
