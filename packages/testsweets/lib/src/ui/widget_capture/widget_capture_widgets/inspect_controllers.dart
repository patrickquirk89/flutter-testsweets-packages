import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testsweets/src/constants/app_constants.dart';
import 'package:testsweets/src/enums/capture_widget_enum.dart';
import 'package:testsweets/src/extensions/capture_widget_status_enum_extension.dart';
import 'package:testsweets/src/models/application_models.dart';
import 'package:testsweets/src/ui/shared/shared_styles.dart';
import 'package:testsweets/src/ui/widget_capture/widget_capture_viewmodel.dart';

import 'widget_circle.dart';
import 'widget_name_input.dart';

class InspectControllers extends ViewModelWidget<WidgetCaptureViewModel> {
  const InspectControllers({
    Key? key,
    required this.widgetNameController,
    required this.widgetNameFocusNode,
  }) : super(key: key);

  final TextEditingController widgetNameController;
  final FocusNode widgetNameFocusNode;
  @override
  Widget build(BuildContext context, WidgetCaptureViewModel model) {
    bool widgetIsInTopLeftCornerMeaningItsAView(WidgetDescription element) =>
        element.position.x != 0 && element.position.y != 0;

    bool eitherItsInUpdateModeOrItIsTheActiveWidget(
            WidgetDescription element) =>
        (model.captureWidgetStatusEnum !=
                CaptureWidgetStatusEnum.inspectModeUpdate ||
            element.id != model.activeWidgetDescription!.id);

    bool filterUnWantedWidgets(WidgetDescription element) =>
        widgetIsInTopLeftCornerMeaningItsAView(element) &&
        eitherItsInUpdateModeOrItIsTheActiveWidget(element);

    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        if (model.captureWidgetStatusEnum ==
            CaptureWidgetStatusEnum.inspectModeUpdate)
          Positioned(
              top: model.activedescriptionTop,
              left: model.activedescriptionLeft,
              child: GestureDetector(
                onPanUpdate: (panEvent) {
                  final x = panEvent.delta.dx;
                  final y = panEvent.delta.dy;
                  model.updateActiveDescriptionPosition(x, y);
                },
                child: WidgetCircle(
                    widgetType: model.activeWidgetDescription!.widgetType),
              )),
        ...model.descriptionsForView.where(filterUnWantedWidgets).map(
              (description) => Positioned(
                top: description.position.y -
                    (WIDGET_DESCRIPTION_VISUAL_SIZE / 2),
                left: description.position.x -
                    (WIDGET_DESCRIPTION_VISUAL_SIZE / 2),
                child: IgnorePointer(
                  ignoring: model.captureWidgetStatusEnum.isSelectWidgetMode,
                  child: GestureDetector(
                    onTap: () => model.showWidgetDescription(description),
                    onPanUpdate: (panEvent) {
                      final x = panEvent.delta.dx;
                      final y = panEvent.delta.dy;
                      model.updateActiveDescriptionPosition(x, y);
                    },
                    child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: model.activeWidgetDescription?.id !=
                                    description.id &&
                                model.captureWidgetStatusEnum.isSelectWidgetMode
                            ? 0.25
                            : 1,
                        child: WidgetCircle(
                          key: Key(description.automationKey),
                          widgetType: description.widgetType,
                        )),
                  ),
                ),
              ),
            ),
        FadeInWidget(
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutCubic,
              alignment: model.widgetNameInputPositionIsDown
                  ? Alignment.bottomCenter
                  : Alignment.topCenter,
              widthFactor: 1,
              child: WidgetNameInput(
                isEditMode: true,
                errorMessage: model.nameInputErrorMessage,
                closeWidget: () {
                  widgetNameController.clear();
                  model.closeWidgetNameInput();
                },
                deleteWidget: model.deleteWidgetDescription,
                saveWidget: () => model
                    .updateWidgetDescription(model.activeWidgetDescription!),
                switchPositionTap: model.switchWidgetNameInputPosition,
                focusNode: widgetNameFocusNode,
                textEditingController: widgetNameController,
              ),
            ),
            isVisible: !model.isBusy &&
                model.captureWidgetStatusEnum ==
                    CaptureWidgetStatusEnum.inspectModeUpdate),
      ],
    );
  }
}
