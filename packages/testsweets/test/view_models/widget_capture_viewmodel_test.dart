import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:testsweets/src/enums/capture_widget_enum.dart';
import 'package:testsweets/src/enums/widget_type.dart';
import 'package:testsweets/src/models/application_models.dart';
import 'package:testsweets/src/ui/widget_capture/widget_capture_view.form.dart';
import 'package:testsweets/src/ui/widget_capture/widget_capture_viewmodel.dart';
import 'package:testsweets/utils/error_messages.dart';

import '../helpers/test_helpers.dart';

final _projectId = 'projectId';
void main() {
  group('WidgetCaptureViewModelTest -', () {
    setUp(registerServices);
    tearDown(unregisterServices);
    group('constructor -', () {
      test('When called, should set the project id in WidgetCaptureService',
          () async {
        final service = getAndRegisterWidgetCaptureService();

        WidgetCaptureViewModel(projectId: _projectId);

        verify(service.projectId = _projectId);
      });
    });
    group('saveWidget -', () {
      test('''When called on route `current route`,
           Should added it to widgetDescription and send it to server''',
          () async {
        getAndRegisterTestSweetsRouteTracker(currentRoute: 'current route');
        final model = WidgetCaptureViewModel(projectId: _projectId);
        model.formValueMap[WidgetNameValueKey] = 'myWidgetName';
        model.showWidgetForm();
        model.widgetDescription!.copyWith(widgetType: WidgetType.scrollable);
        model.saveWidget();
        expect(model.widgetDescription!.originalViewName, 'current route');
      });
      test('''When called and the current route is `/current route`,
           Should convert it to `currentRoute` in viewName proberty before send it to backend''',
          () async {
        getAndRegisterTestSweetsRouteTracker(currentRoute: '/current route');
        final model = WidgetCaptureViewModel(projectId: _projectId);
        model.formValueMap[WidgetNameValueKey] = 'myWidgetName';
        model.showWidgetForm();
        model.widgetDescription!.copyWith(widgetType: WidgetType.scrollable);
        model.saveWidget();
        expect(model.widgetDescription!.viewName, 'currentRoute');
        expect(model.widgetDescription!.originalViewName, '/current route');
      });
      test('''When called and the current widget name is `login-button`,
           Should convert it to `loginButton` in name proberty before send it to backend''',
          () async {
        getAndRegisterTestSweetsRouteTracker(currentRoute: '/current route');
        final model = WidgetCaptureViewModel(projectId: _projectId);
        model.showWidgetForm();

        model.formValueMap[WidgetNameValueKey] = 'login-button';

        model.widgetDescription =
            model.widgetDescription!.copyWith(widgetType: WidgetType.touchable);
        model.saveWidget();
        expect(model.widgetDescription!.name, 'loginButton');
      });
    });
  });
}



//     group('showWidgetDescription -', () {
//       test(
//           'When called, should set the active widget description to the current widget description',
//           () async {
//         final description = WidgetDescription(
//           originalViewName: ' ',
//           id: 'widgetId',
//           viewName: 'login',
//           name: 'email',
//           position: WidgetPosition(
//               x: 100, y: 199, capturedDeviceHeight: 0, capturedDeviceWidth: 0),
//           widgetType: WidgetType.general,
//         );

//         final model = WidgetCaptureViewModel(projectId: _projectId);

//         model.showWidgetDescription(description);

//         expect(model.widgetDescription, description);
//       });

//       test(
//           'When called, should set widget description and ignore pointer boolean value be true',
//           () async {
//         final description = WidgetDescription(
//           originalViewName: ' ',
//           viewName: 'login',
//           name: 'email',
//           position: WidgetPosition(
//               x: 100, y: 199, capturedDeviceHeight: 0, capturedDeviceWidth: 0),
//           widgetType: WidgetType.general,
//         );

//         final model = WidgetCaptureViewModel(projectId: _projectId);

//         model.showWidgetDescription(description);

//         expect(
//             model.captureWidgetStatusEnum ==
//                 CaptureWidgetStatusEnum.inspectModeDialogShow,
//             isTrue);
//       });
//     });

//     group('closeWidgetDescription -', () {
//       test('When called, should set the active widgetId to empty', () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);

//         model.closeWidgetDescription();

//         expect(model.widgetDescription, isNull);
//       });

//       test(
//           'When called, should set widget description and ignore pointer boolean value be false',
//           () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);

//         model.closeWidgetDescription();

//         expect(
//             model.captureWidgetStatusEnum ==
//                 CaptureWidgetStatusEnum.inspectModeDialogShow,
//             isFalse);
//       });
//     });

//     group('captureWidgetStatusEnum -', () {
//       test('When call getter, Should default to idle', () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         expect(model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.idle);
//       });
//       test(
//           'When assign the enum to captureMode, Should change the value to the new assigned status',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.captureWidgetStatusEnum = CaptureWidgetStatusEnum.captureMode;
//         expect(
//             model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.captureMode);
//       });
//     });
//     group('widgetDescription -', () {
//       test('When call getter, Should default to null', () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         expect(model.widgetDescription, null);
//       });
//     });
//     group('hasWidgetNameFocus -', () {
//       test('When call getter, Should default to false', () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         expect(model.hasWidgetNameFocus, false);
//       });
//     });

//     group('widgetNameInputPositionIsDown -', () {
//       test('When call getter, Should default to true', () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         expect(model.widgetNameInputPositionIsDown, true);
//       });
//     });
//     group('widgetDescription -', () {
//       test('When call getter, Should default to null', () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         expect(model.widgetDescription, null);
//       });
//     });
//     group('descriptionsForView -', () {
//       test(
//           'When call this getter, Should fetch list of WidgetDescription for the current route',
//           () {
//         final description = WidgetDescription(
//           originalViewName: ' ',
//           id: 'widgetId',
//           viewName: 'login',
//           name: 'email',
//           position: WidgetPosition(
//               x: 100, y: 199, capturedDeviceHeight: 0, capturedDeviceWidth: 0),
//           widgetType: WidgetType.general,
//         );
//         getAndRegisterWidgetCaptureService(
//             listOfWidgetDescription: [description]);
//         getAndRegisterTestSweetsRouteTracker();
//         final model = WidgetCaptureViewModel(projectId: _projectId);

//         expect(model.descriptionsForView, [description]);
//       });
//     });
//     group('initialise -', () {
//       test(
//           'When calling initialise, Should call loadWidgetDescriptionsForProject from WidgetCaptureService',
//           () {
//         final service = getAndRegisterWidgetCaptureService();
//         WidgetCaptureViewModel(projectId: _projectId);
//         verify(service.loadWidgetDescriptionsForProject(projectId: _projectId));
//       });
//     });
//     group('toggleCaptureView -', () {
//       test(
//           'When called while the status is isAtCaptureMode, Should set captureWidgetStatusEnum to idle',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.captureWidgetStatusEnum = CaptureWidgetStatusEnum.captureMode;
//         model.toggleCaptureView();
//         expect(model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.idle);
//       });
//       test(
//           'When called while the status is anything but isAtCaptureMode, Should set captureWidgetStatusEnum to captureMode',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.captureWidgetStatusEnum = CaptureWidgetStatusEnum.idle;
//         model.toggleCaptureView();
//         expect(
//             model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.captureMode);
//       });
//     });
//     group('toggleInspectLayout -', () {
//       test(
//           'When called while the status is inspectMode, Should set captureWidgetStatusEnum to idle',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.captureWidgetStatusEnum = CaptureWidgetStatusEnum.inspectMode;
//         model.toggleInspectLayout();
//         expect(model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.idle);
//       });
//       test(
//           'When called while the status is anything but inspectMode, Should set captureWidgetStatusEnum to captureMode',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.captureWidgetStatusEnum = CaptureWidgetStatusEnum.idle;
//         model.toggleInspectLayout();
//         expect(
//             model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.inspectMode);
//       });
//     });
//     group('updateDescriptionPosition -', () {
//       test(
//           'When called, Should add the difference to widgetDescription position',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         //initialise it cause it default to null
//         model.addNewWidget(
//             WidgetType.touchable,
//             WidgetPosition(
//                 x: 1, y: 1, capturedDeviceHeight: 0, capturedDeviceWidth: 0));
//         model.updateDescriptionPosition(2, 2, 0, 0);
//         expect(model.widgetDescription!.position.x, 3);
//         expect(model.widgetDescription!.position.y, 3);
//       });
//     });
 
//     group('sendWidgetDescriptionToFirestore -', () {
//       test(
//           'When called, Should set captureWidgetStatusEnum to captureModeWidgetsContainerShow and widgetDescription to null',
//           () async {
//         final description = WidgetDescription(
//           originalViewName: ' ',
//           viewName: 'login',
//           id: 'id',
//           name: 'email',
//           position: WidgetPosition(
//               x: 100, y: 199, capturedDeviceHeight: 0, capturedDeviceWidth: 0),
//           widgetType: WidgetType.general,
//         );
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         await model.addNewWidget(description.widgetType, description.position);
//         await model.sendWidgetDescriptionToFirestore();
//         expect(model.captureWidgetStatusEnum,
//             CaptureWidgetStatusEnum.captureModeWidgetsContainerShow);
//         expect(model.widgetDescription, null);
//       });
//     });
//     group('setWidgetNameFocused -', () {
//       test('When called with true, Should make hasWidgetNameFocus  true', () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.setWidgetNameFocused(true);
//         expect(model.hasWidgetNameFocus, true);
//       });
//     });

//     group('toggleWidgetsContainer -', () {
//       test(
//           'When called while the status is captureModeWidgetsContainerShow, Should set captureWidgetStatusEnum to captureModeAddWidget',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.captureWidgetStatusEnum =
//             CaptureWidgetStatusEnum.captureModeWidgetsContainerShow;
//         model.toggleWidgetsContainer();
//         expect(model.captureWidgetStatusEnum,
//             CaptureWidgetStatusEnum.captureModeAddWidget);
//       });
//       test(
//           'When called while the status is anything but captureModeWidgetsContainerShow, Should set captureWidgetStatusEnum to captureModeWidgetsContainerShow',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.captureWidgetStatusEnum = CaptureWidgetStatusEnum.idle;
//         model.toggleWidgetsContainer();
//         expect(model.captureWidgetStatusEnum,
//             CaptureWidgetStatusEnum.captureModeWidgetsContainerShow);
//       });
//     });
//     group('addNewWidget -', () {
//       test(
//           'When called with widgetType is view, Should update the widgetDescription with a viewWidget',
//           () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.formValueMap[WidgetNameValueKey] = 'my widget name';
//         model.addNewWidget(WidgetType.view, WidgetPosition.empty());
//         expect(model.widgetDescription!.widgetType, WidgetType.view);
//       });
//       test(
//           'When called with widgetType is other than view, Should update the captureWidgetStatusEnum to captureModeWidgetNameInputShow',
//           () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.formValueMap[WidgetNameValueKey] = 'my widget name';
//         await model.addNewWidget(WidgetType.input, WidgetPosition.empty());
//         expect(model.captureWidgetStatusEnum,
//             CaptureWidgetStatusEnum.captureModeWidgetNameInputShow);
//       });
//       test(
//           'When called, should check if the current view(route) is captured or not',
//           () async {
//         final widgetCaptureService = getAndRegisterWidgetCaptureService(
//             currentViewIsAlreadyCaptured: true);

//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.formValueMap[WidgetNameValueKey] = 'my widget name';
//         await model.addNewWidget(WidgetType.input, WidgetPosition.empty());

//         verify(widgetCaptureService
//             .checkCurrentViewIfAlreadyCaptured('current route'));
//       });
//     });
//     group('switchWidgetNameInputPosition -', () {
//       test('When called once, Should make widgetNameInputPositionIsDown false',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.switchWidgetNameInputPosition();
//         expect(model.widgetNameInputPositionIsDown, false);
//       });
//     });
//     group('closeWidgetNameInput -', () {
//       test(
//           'When called, SHould make widgetDescription null and call toggleWidgetsContainer()',
//           () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         expect(model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.idle);
//         model.closeWidgetNameInput();
//         expect(model.captureWidgetStatusEnum,
//             CaptureWidgetStatusEnum.captureModeWidgetsContainerShow);
//       });
//       test('When called, Should empty the nameInputErrorMessage', () {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.closeWidgetNameInput();
//         expect(model.nameInputErrorMessage, isEmpty);
//       });
//     });

//     group('deleteWidgetDescription -', () {
//       final description = WidgetDescription(
//         originalViewName: ' ',
//         viewName: 'login',
//         id: 'id',
//         name: 'email',
//         position: WidgetPosition(
//             x: 100, y: 199, capturedDeviceHeight: 0, capturedDeviceWidth: 0),
//         widgetType: WidgetType.general,
//       );
//       test(
//           'When called, Should call deleteWidgetDescription from WidgetCaptureService',
//           () async {
//         final widgetCaptureService = getAndRegisterWidgetCaptureService();
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.showWidgetDescription(description);
//         await model.deleteWidgetDescription();
//         verify(widgetCaptureService.deleteWidgetDescription(
//             projectId: _projectId, description: description));
//       });

//       test('When the call ended sucessfully, Should close the edit dialog',
//           () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.showWidgetDescription(description);
//         await model.deleteWidgetDescription();
//         expect(
//             model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.inspectMode);
//       });
//     });

//     group('updateWidgetDescription -', () {
//       final description = WidgetDescription(
//         originalViewName: ' ',
//         viewName: 'login',
//         id: 'id',
//         name: 'email',
//         position: WidgetPosition(
//             x: 100, y: 199, capturedDeviceWidth: 0, capturedDeviceHeight: 0),
//         widgetType: WidgetType.general,
//       );
//       test(
//           'When called and onChangedValue is empty, Should update nameInputErrorMessage with the following message "Widget name must not be empty"',
//           () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.formValueMap[WidgetNameValueKey] = '';
//         await model.updateWidgetDescription(description);
//         expect(model.nameInputErrorMessage, "Widget name must not be empty");
//       });

//       test(
//           'When called and new name is NOT empty, Should change activate widget name',
//           () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.showWidgetDescription(description);
//         model.formValueMap[WidgetNameValueKey] = 'email';
//         await model.updateWidgetDescription(description);
//         expect(model.widgetDescription!.name, 'email');
//       });

//       test(
//           'When called, should call updateWidgetDescription() in WidgetCaptureService"',
//           () async {
//         final service = getAndRegisterWidgetCaptureService();

//         final model = WidgetCaptureViewModel(projectId: _projectId);
//         model.showWidgetDescription(description);

//         model.formValueMap[WidgetNameValueKey] = 'loginButton';

//         await model.updateWidgetDescription(description);

//         verify(service.updateWidgetDescription(
//             projectId: _projectId,
//             description: description.copyWith(name: 'loginButton')));
//       });

//       test(
//           'When called and update was successful, Should set the current CaptureWidgetStatusEnum to inspectMode',
//           () async {
//         final model = WidgetCaptureViewModel(projectId: _projectId);

//         model.showWidgetDescription(description);
//         model.captureWidgetStatusEnum =
//             CaptureWidgetStatusEnum.inspectModeUpdate;
//         model.formValueMap[WidgetNameValueKey] = 'loginButton';

//         await model.updateWidgetDescription(description);

//         expect(
//             model.captureWidgetStatusEnum, CaptureWidgetStatusEnum.inspectMode);
//       });
//     });
//   });
// }
