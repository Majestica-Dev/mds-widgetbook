import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(
          ThemeState(
            colors: MDSColors(
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
            ),
            spacing: const MDSSpacing(), //TODO: default theme
          ),
        );

  void setTheme({
    required MDSColors colors,
    required MDSSpacing spacing,
  }) {
    emit(
      ThemeState(
        colors: colors,
        textTheme: const MDSTextThemeData(
          bodyMRegular: MDSTypography.bodyMRegular,
          bodyMBold: MDSTypography.bodyMBold,
          bodySRegular: MDSTypography.bodySRegular,
          bodySBold: MDSTypography.bodySBold,
          bodyXSRegular: MDSTypography.bodyXSRegular,
          bodyXSBold: MDSTypography.bodyXSBold,
        ), //TODO: default theme
        spacing: spacing,
      ),
    );
  }
}
