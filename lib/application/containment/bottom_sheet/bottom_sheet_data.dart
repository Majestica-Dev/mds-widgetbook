part of 'bottom_sheet_data_cubit.dart';

class BottomSheetData with EquatableMixin {
  final bool isDismissible;
  final bool enableDrag;
  final bool expand;
  final bool showHeader;
  final bool centerTitle;
  final bool showLeading;
  final bool showTrailing;

  BottomSheetData({
    this.isDismissible = true,
    this.enableDrag = true,
    this.expand = false,
    this.showHeader = false,
    this.centerTitle = true,
    this.showLeading = false,
    this.showTrailing = false,
  });

  @override
  List<Object?> get props => [
        isDismissible,
        enableDrag,
        expand,
        showHeader,
        centerTitle,
        showLeading,
        showLeading,
      ];
}
