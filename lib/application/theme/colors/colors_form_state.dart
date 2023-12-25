part of 'colors_form_cubit.dart';

class ColorsDataState with EquatableMixin {
  final double primaryHighContainerOpacity;
  final double primaryMedContainerOpacity;
  final double primaryLowContainerOpacity;

  final double primaryHighContentOpacity;
  final double primaryLowContentOpacity;
  final double primaryMedContentOpacity;

  final double neutralHighContainerOpacity;
  final double neutralMedContainerOpacity;
  final double neutralLowContainerOpacity;

  final double neutralHighContentOpacity;
  final double neutralMedContentOpacity;
  final double neutralLowContentOpacity;

  final Color primary;
  final Color nuetral;

  ColorsDataState({
    this.primaryHighContainerOpacity = 1,
    this.primaryMedContainerOpacity = .12,
    this.primaryLowContainerOpacity = .04,
    this.primaryHighContentOpacity = 1,
    this.primaryLowContentOpacity = .22,
    this.primaryMedContentOpacity = .44,
    this.neutralHighContainerOpacity = .44,
    this.neutralMedContainerOpacity = .12,
    this.neutralLowContainerOpacity = .04,
    this.neutralHighContentOpacity = 1,
    this.neutralMedContentOpacity = .44,
    this.neutralLowContentOpacity = .22,
    this.primary = const Color(0xff0766eb),
    this.nuetral = const Color(0xff000000),
  });

  ColorsDataState copyWith({
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
    final Color? nuetral,
  }) {
    return ColorsDataState(
      primaryHighContainerOpacity:
          primaryHighContainerOpacity ?? this.primaryHighContainerOpacity,
      primaryMedContainerOpacity:
          primaryMedContainerOpacity ?? this.primaryMedContainerOpacity,
      primaryLowContainerOpacity:
          primaryLowContainerOpacity ?? this.primaryLowContainerOpacity,
      primaryHighContentOpacity:
          primaryHighContentOpacity ?? this.primaryHighContentOpacity,
      primaryLowContentOpacity:
          primaryLowContentOpacity ?? this.primaryLowContentOpacity,
      primaryMedContentOpacity:
          primaryMedContentOpacity ?? this.primaryMedContentOpacity,
      neutralHighContainerOpacity:
          neutralHighContainerOpacity ?? this.neutralHighContainerOpacity,
      neutralMedContainerOpacity:
          neutralMedContainerOpacity ?? this.neutralMedContainerOpacity,
      neutralLowContainerOpacity:
          neutralLowContainerOpacity ?? this.neutralLowContainerOpacity,
      neutralHighContentOpacity:
          neutralHighContentOpacity ?? this.neutralHighContentOpacity,
      neutralMedContentOpacity:
          neutralMedContentOpacity ?? this.neutralMedContentOpacity,
      neutralLowContentOpacity:
          neutralLowContentOpacity ?? this.neutralLowContentOpacity,
      primary: primary ?? this.primary,
      nuetral: nuetral ?? this.nuetral,
    );
  }

  @override
  List<Object?> get props => [
        primaryHighContainerOpacity,
        primaryMedContainerOpacity,
        primaryLowContainerOpacity,
        primaryHighContentOpacity,
        primaryLowContentOpacity,
        primaryMedContentOpacity,
        neutralHighContainerOpacity,
        neutralMedContainerOpacity,
        neutralLowContainerOpacity,
        neutralHighContentOpacity,
        neutralMedContentOpacity,
        neutralLowContentOpacity,
      ];
}
