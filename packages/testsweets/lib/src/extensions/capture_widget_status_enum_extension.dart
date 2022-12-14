import 'package:testsweets/src/enums/capture_widget_enum.dart';

extension CaptureWidgetEnumUnion on CaptureWidgetStatusEnum {
  bool get createWidgetMode => this == CaptureWidgetStatusEnum.createWidget;

  bool get showWidgetForm =>
      this == CaptureWidgetStatusEnum.idle ||
      this == CaptureWidgetStatusEnum.editWidget ||
      this == CaptureWidgetStatusEnum.createWidget;

  bool get showConnections => this == CaptureWidgetStatusEnum.idle;

  bool get showWidgets =>
      this == CaptureWidgetStatusEnum.idle ||
      this == CaptureWidgetStatusEnum.quickPositionEdit;

  bool get showDraggableWidget =>
      this == CaptureWidgetStatusEnum.idle ||
      this == CaptureWidgetStatusEnum.createWidget ||
      this == CaptureWidgetStatusEnum.editWidget ||
      this == CaptureWidgetStatusEnum.quickPositionEdit;
}
