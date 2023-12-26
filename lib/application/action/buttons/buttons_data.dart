part of 'buttons_data_cubit.dart';

class ButtonsData with EquatableMixin {
  final ButtonType buttonType;
  final bool disabled;
  final String text;
  final bool showLeftIcon;
  final bool showRigtIcon;
  final MDSButtonSize buttonSize;
  final ColorMode colorMode;
  final Axis axis;

  ButtonsData({
    this.buttonType = ButtonType.primary,
    this.disabled = false,
    this.text = 'Button',
    this.showLeftIcon = true,
    this.showRigtIcon = true,
    this.buttonSize = MDSButtonSize.M,
    this.colorMode = ColorMode.primary,
    this.axis = Axis.horizontal,
  });

  @override
  List<Object?> get props => [
        buttonType,
        disabled,
        text,
        showLeftIcon,
        showRigtIcon,
        buttonSize,
        colorMode,
        axis,
      ];
}
