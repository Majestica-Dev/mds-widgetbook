import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_sheet_data.dart';

class BottomSheetDataCubit extends Cubit<BottomSheetData> {
  BottomSheetDataCubit() : super(BottomSheetData());

  void setData({
    bool isDismissible = true,
    bool enableDrag = true,
    bool expand = false,
    bool showHeader = false,
    bool centerTitle = true,
    bool showLeading = false,
    bool showTrailing = false,
  }) {
    final newState = BottomSheetData(
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      expand: expand,
      showHeader: showHeader,
      centerTitle: centerTitle,
      showLeading: showLeading,
      showTrailing: showTrailing,
    );
    

    if (state != newState) {
      emit(newState);
    }
  }
}
