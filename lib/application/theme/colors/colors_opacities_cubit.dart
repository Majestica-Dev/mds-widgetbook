import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'colors_opacities_state.dart';

class ColorsOpacitiesCubit extends Cubit<ColorsOpacitiesState> {
  ColorsOpacitiesCubit() : super(ColorsOpacitiesState());

  void setColorsOpacities({
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
      ),
    );
  }
}
