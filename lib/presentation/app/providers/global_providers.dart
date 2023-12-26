import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mds_widget_book/application/action/buttons/buttons_data_cubit.dart';
import 'package:mds_widget_book/application/theme/colors/colors_data_cubit.dart';

import 'package:mds_widget_book/application/theme/theme_cubit.dart';

class GlobalProviders extends StatelessWidget {
  final Widget child;

  const GlobalProviders({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => ColorsDataCubit(),
        ),
        BlocProvider(
          create: (context) => ButtonsDataCubit(),
        ),
      ],
      child: child,
    );
  }
}
