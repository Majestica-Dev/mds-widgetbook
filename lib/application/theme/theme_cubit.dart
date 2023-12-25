import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(
          ThemeState(
            colors: MDSColors.light(
              background: const Color(0xffF8F8F8),
              surface: const Color(0xffFFFFFF),
              primary: const Color(0xff0766EB),
              neutral: const Color(0xff000000),
              highContainerContent: const Color(0xffFFFFFF),
            ),
            textTheme: const MDSTextThemeData(
              bodyMRegular: MDSTypography.bodyMRegular,
              bodyMBold: MDSTypography.bodyMBold,
              bodySRegular: MDSTypography.bodySRegular,
              bodySBold: MDSTypography.bodySBold,
              bodyXSRegular: MDSTypography.bodyXSRegular,
              bodyXSBold: MDSTypography.bodyXSBold,
              headlineRegular: MDSTypography.headlineRegular,
              headlineBold: MDSTypography.headlineBold,
              title3Regular: MDSTypography.title3Regular,
              title3Bold: MDSTypography.title3Bold,
              title2Regular: MDSTypography.title2Regular,
              title2Bold: MDSTypography.title2Bold,
              title1Regular: MDSTypography.title1Regular,
              title1Bold: MDSTypography.title1Bold,
              titleLargeRegular: MDSTypography.titleLargeRegular,
              titleLargeBold: MDSTypography.titleLargeBold,
            ),
            spacing: const MDSSpacing(), //TODO: default theme
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
}
