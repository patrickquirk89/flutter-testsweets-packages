// Mocks generated by Mockito 5.1.0 from annotations
// in testsweets/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;
import 'dart:ui' as _i5;

import 'package:flutter/cupertino.dart' as _i8;
import 'package:logger/src/logger.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/src/snackbar/snackbar_config.dart' as _i7;
import 'package:stacked_services/src/snackbar/snackbar_service.dart' as _i6;
import 'package:testsweets/src/enums/handler_message_response.dart' as _i15;
import 'package:testsweets/src/models/application_models.dart' as _i3;
import 'package:testsweets/src/services/cloud_functions_service.dart' as _i12;
import 'package:testsweets/src/services/http_service.dart' as _i4;
import 'package:testsweets/src/services/notification_extractor.dart' as _i19;
import 'package:testsweets/src/services/reactive_scrollable.dart' as _i16;
import 'package:testsweets/src/services/scroll_appliance.dart' as _i18;
import 'package:testsweets/src/services/sweetcore_command.dart' as _i14;
import 'package:testsweets/src/services/testsweets_route_tracker.dart' as _i11;
import 'package:testsweets/src/services/widget_capture_service.dart' as _i10;
import 'package:testsweets/src/services/widget_visibilty_changer_service.dart'
    as _i13;
import 'package:testsweets/src/ui/shared/find_scrollables.dart' as _i17;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeLogger_0 extends _i1.Fake implements _i2.Logger {}

class _FakeInteraction_1 extends _i1.Fake implements _i3.Interaction {}

class _FakeHttpService_2 extends _i1.Fake implements _i4.HttpService {}

class _FakeScrollableDescription_3 extends _i1.Fake
    implements _i3.ScrollableDescription {}

class _FakeOffset_4 extends _i1.Fake implements _i5.Offset {}

/// A class which mocks [SnackbarService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSnackbarService extends _i1.Mock implements _i6.SnackbarService {
  @override
  void registerSnackbarConfig(_i7.SnackbarConfig? config) =>
      super.noSuchMethod(Invocation.method(#registerSnackbarConfig, [config]),
          returnValueForMissingStub: null);
  @override
  void registerCustomSnackbarconfig(
          {dynamic customData, _i7.SnackbarConfig? config}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomSnackbarconfig, [],
              {#customData: customData, #config: config}),
          returnValueForMissingStub: null);
  @override
  void registerCustomMainButtonBuilder(
          {dynamic variant,
          _i8.Widget Function(String?, Function?)? builder}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomMainButtonBuilder, [],
              {#variant: variant, #builder: builder}),
          returnValueForMissingStub: null);
  @override
  void registerCustomSnackbarConfig(
          {dynamic variant,
          _i7.SnackbarConfig? config,
          _i7.SnackbarConfig Function()? configBuilder}) =>
      super.noSuchMethod(
          Invocation.method(#registerCustomSnackbarConfig, [], {
            #variant: variant,
            #config: config,
            #configBuilder: configBuilder
          }),
          returnValueForMissingStub: null);
  @override
  void showSnackbar(
          {String? title = r'',
          String? message,
          dynamic Function(dynamic)? onTap,
          Duration? duration = const Duration(seconds: 3),
          String? mainButtonTitle,
          void Function()? onMainButtonTapped}) =>
      super.noSuchMethod(
          Invocation.method(#showSnackbar, [], {
            #title: title,
            #message: message,
            #onTap: onTap,
            #duration: duration,
            #mainButtonTitle: mainButtonTitle,
            #onMainButtonTapped: onMainButtonTapped
          }),
          returnValueForMissingStub: null);
  @override
  _i9.Future<dynamic>? showCustomSnackBar(
          {String? message,
          dynamic customData,
          dynamic variant,
          String? title,
          String? mainButtonTitle,
          void Function()? onMainButtonTapped,
          Function? onTap,
          Duration? duration = const Duration(seconds: 1)}) =>
      (super.noSuchMethod(Invocation.method(#showCustomSnackBar, [], {
        #message: message,
        #customData: customData,
        #variant: variant,
        #title: title,
        #mainButtonTitle: mainButtonTitle,
        #onMainButtonTapped: onMainButtonTapped,
        #onTap: onTap,
        #duration: duration
      })) as _i9.Future<dynamic>?);
}

/// A class which mocks [WidgetCaptureService].
///
/// See the documentation for Mockito's code generation for more information.
class MockWidgetCaptureService extends _i1.Mock
    implements _i10.WidgetCaptureService {
  @override
  _i2.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_0())
          as _i2.Logger);
  @override
  Map<String, List<_i3.Interaction>> get widgetDescriptionMap =>
      (super.noSuchMethod(Invocation.getter(#widgetDescriptionMap),
              returnValue: <String, List<_i3.Interaction>>{})
          as Map<String, List<_i3.Interaction>>);
  @override
  bool get verbose =>
      (super.noSuchMethod(Invocation.getter(#verbose), returnValue: false)
          as bool);
  @override
  set projectId(String? projectId) =>
      super.noSuchMethod(Invocation.setter(#projectId, projectId),
          returnValueForMissingStub: null);
  @override
  set addWidgetDescriptionToMap(_i3.Interaction? description) => super
      .noSuchMethod(Invocation.setter(#addWidgetDescriptionToMap, description),
          returnValueForMissingStub: null);
  @override
  _i9.Future<void> loadWidgetDescriptionsForProject() => (super.noSuchMethod(
      Invocation.method(#loadWidgetDescriptionsForProject, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<_i3.Interaction> saveInteractionInDatabase(
          _i3.Interaction? interaction) =>
      (super.noSuchMethod(
              Invocation.method(#saveInteractionInDatabase, [interaction]),
              returnValue: Future<_i3.Interaction>.value(_FakeInteraction_1()))
          as _i9.Future<_i3.Interaction>);
  @override
  _i9.Future<void> updateInteractionInDatabase(
          {_i3.Interaction? updatedInteraction,
          _i3.Interaction? oldInteraction}) =>
      (super.noSuchMethod(
          Invocation.method(#updateInteractionInDatabase, [], {
            #updatedInteraction: updatedInteraction,
            #oldInteraction: oldInteraction
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> removeInteractionFromDatabase(
          _i3.Interaction? interaction) =>
      (super.noSuchMethod(
          Invocation.method(#removeInteractionFromDatabase, [interaction]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<_i3.Interaction> captureView(String? originalViewName) =>
      (super.noSuchMethod(Invocation.method(#captureView, [originalViewName]),
              returnValue: Future<_i3.Interaction>.value(_FakeInteraction_1()))
          as _i9.Future<_i3.Interaction>);
  @override
  List<_i3.Interaction> getDescriptionsForView({String? currentRoute}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getDescriptionsForView, [], {#currentRoute: currentRoute}),
          returnValue: <_i3.Interaction>[]) as List<_i3.Interaction>);
  @override
  bool checkCurrentViewIfAlreadyCaptured(String? originalViewName) =>
      (super.noSuchMethod(
          Invocation.method(
              #checkCurrentViewIfAlreadyCaptured, [originalViewName]),
          returnValue: false) as bool);
  @override
  void syncRouteInteractions(
          String? routeName, List<_i3.Interaction>? interactions) =>
      super.noSuchMethod(
          Invocation.method(#syncRouteInteractions, [routeName, interactions]),
          returnValueForMissingStub: null);
}

/// A class which mocks [TestSweetsRouteTracker].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestSweetsRouteTracker extends _i1.Mock
    implements _i11.TestSweetsRouteTracker {
  @override
  _i2.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_0())
          as _i2.Logger);
  @override
  bool get testMode =>
      (super.noSuchMethod(Invocation.getter(#testMode), returnValue: false)
          as bool);
  @override
  set testMode(bool? _testMode) =>
      super.noSuchMethod(Invocation.setter(#testMode, _testMode),
          returnValueForMissingStub: null);
  @override
  Map<String, int> get indexedRouteStateMap =>
      (super.noSuchMethod(Invocation.getter(#indexedRouteStateMap),
          returnValue: <String, int>{}) as Map<String, int>);
  @override
  set indexedRouteStateMap(Map<String, int>? _indexedRouteStateMap) =>
      super.noSuchMethod(
          Invocation.setter(#indexedRouteStateMap, _indexedRouteStateMap),
          returnValueForMissingStub: null);
  @override
  String get previosRoute =>
      (super.noSuchMethod(Invocation.getter(#previosRoute), returnValue: '')
          as String);
  @override
  set previosRoute(String? _previosRoute) =>
      super.noSuchMethod(Invocation.setter(#previosRoute, _previosRoute),
          returnValueForMissingStub: null);
  @override
  bool get isChildRouteActivated =>
      (super.noSuchMethod(Invocation.getter(#isChildRouteActivated),
          returnValue: false) as bool);
  @override
  bool get isNestedView =>
      (super.noSuchMethod(Invocation.getter(#isNestedView), returnValue: false)
          as bool);
  @override
  String get currentRoute =>
      (super.noSuchMethod(Invocation.getter(#currentRoute), returnValue: '')
          as String);
  @override
  String get formatedCurrentRoute =>
      (super.noSuchMethod(Invocation.getter(#formatedCurrentRoute),
          returnValue: '') as String);
  @override
  String get parentRoute =>
      (super.noSuchMethod(Invocation.getter(#parentRoute), returnValue: '')
          as String);
  @override
  String get formatedParentRoute =>
      (super.noSuchMethod(Invocation.getter(#formatedParentRoute),
          returnValue: '') as String);
  @override
  String get formatedTempRoute => (super
          .noSuchMethod(Invocation.getter(#formatedTempRoute), returnValue: '')
      as String);
  @override
  String get leftViewName =>
      (super.noSuchMethod(Invocation.getter(#leftViewName), returnValue: '')
          as String);
  @override
  String get rightViewName =>
      (super.noSuchMethod(Invocation.getter(#rightViewName), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  void setCurrentRoute(String? route) =>
      super.noSuchMethod(Invocation.method(#setCurrentRoute, [route]),
          returnValueForMissingStub: null);
  @override
  void setparentRoute(String? route) =>
      super.noSuchMethod(Invocation.method(#setparentRoute, [route]),
          returnValueForMissingStub: null);
  @override
  void toggleActivatedRouteBetweenParentAndChild() => super.noSuchMethod(
      Invocation.method(#toggleActivatedRouteBetweenParentAndChild, []),
      returnValueForMissingStub: null);
  @override
  void refreshUi() => super.noSuchMethod(Invocation.method(#refreshUi, []),
      returnValueForMissingStub: null);
  @override
  void changeRouteIndex(String? viewName, int? index) => super.noSuchMethod(
      Invocation.method(#changeRouteIndex, [viewName, index]),
      returnValueForMissingStub: null);
  @override
  void saveRouteIndex(String? viewName, int? index) =>
      super.noSuchMethod(Invocation.method(#saveRouteIndex, [viewName, index]),
          returnValueForMissingStub: null);
  @override
  void loadRouteIndexIfExist(String? viewName) =>
      super.noSuchMethod(Invocation.method(#loadRouteIndexIfExist, [viewName]),
          returnValueForMissingStub: null);
  @override
  void addListener(_i5.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i5.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [CloudFunctionsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCloudFunctionsService extends _i1.Mock
    implements _i12.CloudFunctionsService {
  @override
  _i2.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_0())
          as _i2.Logger);
  @override
  _i4.HttpService get httpService =>
      (super.noSuchMethod(Invocation.getter(#httpService),
          returnValue: _FakeHttpService_2()) as _i4.HttpService);
  @override
  _i9.Future<String> getV4BuildUploadSignedUrl(
          String? projectId, String? apiKey,
          [Map<dynamic, dynamic>? extensionHeaders = const {}]) =>
      (super.noSuchMethod(
          Invocation.method(#getV4BuildUploadSignedUrl,
              [projectId, apiKey, extensionHeaders]),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<bool> doesBuildExistInProject(String? projectId,
          {String? withVersion}) =>
      (super.noSuchMethod(
          Invocation.method(#doesBuildExistInProject, [projectId],
              {#withVersion: withVersion}),
          returnValue: Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<String> uploadWidgetDescriptionToProject(
          {String? projectId, _i3.Interaction? description}) =>
      (super.noSuchMethod(
          Invocation.method(#uploadWidgetDescriptionToProject, [],
              {#projectId: projectId, #description: description}),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<List<_i3.Interaction>> getWidgetDescriptionForProject(
          {String? projectId}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getWidgetDescriptionForProject, [], {#projectId: projectId}),
              returnValue:
                  Future<List<_i3.Interaction>>.value(<_i3.Interaction>[]))
          as _i9.Future<List<_i3.Interaction>>);
  @override
  _i9.Future<String> updateWidgetDescription(
          {String? projectId,
          _i3.Interaction? oldwidgetDescription,
          _i3.Interaction? newwidgetDescription}) =>
      (super.noSuchMethod(
          Invocation.method(#updateWidgetDescription, [], {
            #projectId: projectId,
            #oldwidgetDescription: oldwidgetDescription,
            #newwidgetDescription: newwidgetDescription
          }),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<String> deleteWidgetDescription(
          {String? projectId, _i3.Interaction? description}) =>
      (super.noSuchMethod(
          Invocation.method(#deleteWidgetDescription, [],
              {#projectId: projectId, #description: description}),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
}

/// A class which mocks [WidgetVisibiltyChangerService].
///
/// See the documentation for Mockito's code generation for more information.
class MockWidgetVisibiltyChangerService extends _i1.Mock
    implements _i13.WidgetVisibiltyChangerService {
  @override
  _i2.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_0())
          as _i2.Logger);
  @override
  set completer(_i9.Completer<dynamic>? _completer) =>
      super.noSuchMethod(Invocation.setter(#completer, _completer),
          returnValueForMissingStub: null);
  @override
  set sweetcoreCommand(_i14.SweetcoreCommand? _sweetcoreCommand) => super
      .noSuchMethod(Invocation.setter(#sweetcoreCommand, _sweetcoreCommand),
          returnValueForMissingStub: null);
  @override
  void completeCompleter(_i15.HandlerMessageResponse? message) =>
      super.noSuchMethod(Invocation.method(#completeCompleter, [message]),
          returnValueForMissingStub: null);
  @override
  Iterable<_i3.Interaction>? runToggleVisibiltyChecker(
          _i8.Notification? notification,
          String? automationKeyName,
          List<_i3.Interaction>? viewWidgets) =>
      (super.noSuchMethod(Invocation.method(#runToggleVisibiltyChecker, [
        notification,
        automationKeyName,
        viewWidgets
      ])) as Iterable<_i3.Interaction>?);
  @override
  Iterable<_i3.Interaction> toggleVisibilty(
          Iterable<_i3.Interaction>? targetedWidgets,
          List<_i3.Interaction>? originalWidgets) =>
      (super.noSuchMethod(
          Invocation.method(
              #toggleVisibilty, [targetedWidgets, originalWidgets]),
          returnValue: <_i3.Interaction>[]) as Iterable<_i3.Interaction>);
  @override
  Iterable<_i3.Interaction> updateViewWidgetsList(
          Iterable<_i3.Interaction>? widgetAfterToggleVisibilty,
          List<_i3.Interaction>? originalWidgets) =>
      (super.noSuchMethod(
          Invocation.method(#updateViewWidgetsList,
              [widgetAfterToggleVisibilty, originalWidgets]),
          returnValue: <_i3.Interaction>[]) as Iterable<_i3.Interaction>);
  @override
  Iterable<_i3.Interaction> filterTargetedWidgets(String? automationKeyName,
          Iterable<_i3.Interaction>? descriptionsForView) =>
      (super.noSuchMethod(
          Invocation.method(
              #filterTargetedWidgets, [automationKeyName, descriptionsForView]),
          returnValue: <_i3.Interaction>[]) as Iterable<_i3.Interaction>);
}

/// A class which mocks [ReactiveScrollable].
///
/// See the documentation for Mockito's code generation for more information.
class MockReactiveScrollable extends _i1.Mock
    implements _i16.ReactiveScrollable {
  @override
  _i2.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_0())
          as _i2.Logger);
  @override
  _i3.ScrollableDescription get currentScrollableDescription =>
      (super.noSuchMethod(Invocation.getter(#currentScrollableDescription),
              returnValue: _FakeScrollableDescription_3())
          as _i3.ScrollableDescription);
  @override
  set currentScrollableDescription(
          _i3.ScrollableDescription? _currentScrollableDescription) =>
      super.noSuchMethod(
          Invocation.setter(
              #currentScrollableDescription, _currentScrollableDescription),
          returnValueForMissingStub: null);
  @override
  Iterable<_i3.Interaction> filterAffectedInteractionsByScrollable(
          List<_i3.Interaction>? viewDescription) =>
      (super.noSuchMethod(
          Invocation.method(
              #filterAffectedInteractionsByScrollable, [viewDescription]),
          returnValue: <_i3.Interaction>[]) as Iterable<_i3.Interaction>);
  @override
  _i5.Offset calculateOffsetDeviation(
          _i3.ScrollableDescription? scrollableDescription,
          _i3.Interaction? interaction) =>
      (super.noSuchMethod(
          Invocation.method(
              #calculateOffsetDeviation, [scrollableDescription, interaction]),
          returnValue: _FakeOffset_4()) as _i5.Offset);
  @override
  Iterable<_i3.Interaction> moveInteractionsWithScrollable(
          Iterable<_i3.Interaction>? affectedInteractions) =>
      (super.noSuchMethod(
          Invocation.method(
              #moveInteractionsWithScrollable, [affectedInteractions]),
          returnValue: <_i3.Interaction>[]) as Iterable<_i3.Interaction>);
}

/// A class which mocks [FindScrollables].
///
/// See the documentation for Mockito's code generation for more information.
class MockFindScrollables extends _i1.Mock implements _i17.FindScrollables {
  @override
  set foundedElements(Iterable<_i8.Element>? _foundedElements) =>
      super.noSuchMethod(Invocation.setter(#foundedElements, _foundedElements),
          returnValueForMissingStub: null);
  @override
  void searchForScrollableElements() =>
      super.noSuchMethod(Invocation.method(#searchForScrollableElements, []),
          returnValueForMissingStub: null);
  @override
  Iterable<_i3.ScrollableDescription> convertElementsToScrollDescriptions() =>
      (super.noSuchMethod(
              Invocation.method(#convertElementsToScrollDescriptions, []),
              returnValue: <_i3.ScrollableDescription>[])
          as Iterable<_i3.ScrollableDescription>);
}

/// A class which mocks [ScrollAppliance].
///
/// See the documentation for Mockito's code generation for more information.
class MockScrollAppliance extends _i1.Mock implements _i18.ScrollAppliance {
  @override
  _i2.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_0())
          as _i2.Logger);
  @override
  _i3.Interaction applyScrollableOnInteraction(
          Iterable<_i3.ScrollableDescription>? scrollables,
          _i3.Interaction? interaction) =>
      (super.noSuchMethod(
          Invocation.method(
              #applyScrollableOnInteraction, [scrollables, interaction]),
          returnValue: _FakeInteraction_1()) as _i3.Interaction);
  @override
  _i3.Interaction storeDescriptionInScrollableExternalities(
          Iterable<_i3.ScrollableDescription>? scrollablesBelowInteraction,
          _i3.Interaction? interaction) =>
      (super.noSuchMethod(
          Invocation.method(#storeDescriptionInScrollableExternalities,
              [scrollablesBelowInteraction, interaction]),
          returnValue: _FakeInteraction_1()) as _i3.Interaction);
  @override
  _i3.Interaction storeDescriptionInExternalities(
          Iterable<_i3.ScrollableDescription>? scrollablesBelowInteraction,
          _i3.Interaction? interaction) =>
      (super.noSuchMethod(
          Invocation.method(#storeDescriptionInExternalities,
              [scrollablesBelowInteraction, interaction]),
          returnValue: _FakeInteraction_1()) as _i3.Interaction);
  @override
  _i3.ScrollableDescription findBiggestScrollable(
          Iterable<_i3.ScrollableDescription>? scrollablesBelowInteraction) =>
      (super.noSuchMethod(
              Invocation.method(
                  #findBiggestScrollable, [scrollablesBelowInteraction]),
              returnValue: _FakeScrollableDescription_3())
          as _i3.ScrollableDescription);
}

/// A class which mocks [NotificationExtractor].
///
/// See the documentation for Mockito's code generation for more information.
class MockNotificationExtractor extends _i1.Mock
    implements _i19.NotificationExtractor {
  @override
  bool onlyScrollUpdateNotification(_i8.Notification? notification) =>
      (super.noSuchMethod(
          Invocation.method(#onlyScrollUpdateNotification, [notification]),
          returnValue: false) as bool);
  @override
  _i3.ScrollableDescription notificationToScrollableDescription(
          _i8.Notification? notification) =>
      (super.noSuchMethod(
              Invocation.method(
                  #notificationToScrollableDescription, [notification]),
              returnValue: _FakeScrollableDescription_3())
          as _i3.ScrollableDescription);
  @override
  List<_i3.Interaction> scrollInteractions(
          _i3.ScrollableDescription? scrollableDescription,
          List<_i3.Interaction>? viewInteractions) =>
      (super.noSuchMethod(
          Invocation.method(
              #scrollInteractions, [scrollableDescription, viewInteractions]),
          returnValue: <_i3.Interaction>[]) as List<_i3.Interaction>);
  @override
  _i3.Interaction syncInteractionWithScrollable(_i3.Interaction? interaction) =>
      (super.noSuchMethod(
          Invocation.method(#syncInteractionWithScrollable, [interaction]),
          returnValue: _FakeInteraction_1()) as _i3.Interaction);
}
