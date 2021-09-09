// Mocks generated by Mockito 5.0.15 from annotations
// in testsweets/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;
import 'dart:io' as _i4;
import 'dart:ui' as _i19;

import 'package:logger/src/logger.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:testsweets/src/models/application_models.dart' as _i13;
import 'package:testsweets/src/models/build_info.dart' as _i3;
import 'package:testsweets/src/services/automation_keys_service.dart' as _i16;
import 'package:testsweets/src/services/build_service.dart' as _i8;
import 'package:testsweets/src/services/cloud_functions_service.dart' as _i12;
import 'package:testsweets/src/services/dynamic_keys_generator.dart' as _i14;
import 'package:testsweets/src/services/file_system_service.dart' as _i2;
import 'package:testsweets/src/services/http_service.dart' as _i5;
import 'package:testsweets/src/services/runnable_process.dart' as _i10;
import 'package:testsweets/src/services/test_sweets_config_file_service.dart'
    as _i7;
import 'package:testsweets/src/services/testsweets_route_tracker.dart' as _i18;
import 'package:testsweets/src/services/time_service.dart' as _i11;
import 'package:testsweets/src/services/upload_service.dart' as _i15;
import 'package:testsweets/src/services/widget_capture_service.dart' as _i17;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeFileSystemService_0 extends _i1.Fake
    implements _i2.FileSystemService {}

class _FakeBuildInfo_1 extends _i1.Fake implements _i3.BuildInfo {}

class _FakeProcess_2 extends _i1.Fake implements _i4.Process {}

class _FakeSimpleHttpResponse_3 extends _i1.Fake
    implements _i5.SimpleHttpResponse {}

class _FakeDateTime_4 extends _i1.Fake implements DateTime {}

class _FakeLogger_5 extends _i1.Fake implements _i6.Logger {}

class _FakeHttpService_6 extends _i1.Fake implements _i5.HttpService {}

/// A class which mocks [TestSweetsConfigFileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestSweetsConfigFileService extends _i1.Mock
    implements _i7.TestSweetsConfigFileService {
  @override
  _i2.FileSystemService get fileSystemService =>
      (super.noSuchMethod(Invocation.getter(#fileSystemService),
          returnValue: _FakeFileSystemService_0()) as _i2.FileSystemService);
  @override
  String getValueFromConfigFileByKey(_i7.ConfigFileKeyType? keyType) => (super
      .noSuchMethod(Invocation.method(#getValueFromConfigFileByKey, [keyType]),
          returnValue: '') as String);
  @override
  String toString() => super.toString();
}

/// A class which mocks [BuildService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBuildService extends _i1.Mock implements _i8.BuildService {
  @override
  _i9.Future<_i3.BuildInfo> build(
          {String? appType,
          List<String>? extraFlutterProcessArgs,
          String? pathToBuild}) =>
      (super.noSuchMethod(
              Invocation.method(#build, [], {
                #appType: appType,
                #extraFlutterProcessArgs: extraFlutterProcessArgs,
                #pathToBuild: pathToBuild
              }),
              returnValue: Future<_i3.BuildInfo>.value(_FakeBuildInfo_1()))
          as _i9.Future<_i3.BuildInfo>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [FileSystemService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileSystemService extends _i1.Mock implements _i2.FileSystemService {
  @override
  String get fullPathToWorkingDirectory =>
      (super.noSuchMethod(Invocation.getter(#fullPathToWorkingDirectory),
          returnValue: '') as String);
  @override
  bool doesFileExist(String? path) =>
      (super.noSuchMethod(Invocation.method(#doesFileExist, [path]),
          returnValue: false) as bool);
  @override
  String readFileAsStringSync(String? path) =>
      (super.noSuchMethod(Invocation.method(#readFileAsStringSync, [path]),
          returnValue: '') as String);
  @override
  _i9.Stream<List<int>> openFileForReading(String? path) =>
      (super.noSuchMethod(Invocation.method(#openFileForReading, [path]),
          returnValue: Stream<List<int>>.empty()) as _i9.Stream<List<int>>);
  @override
  int getFileSizeInBytes(String? path) =>
      (super.noSuchMethod(Invocation.method(#getFileSizeInBytes, [path]),
          returnValue: 0) as int);
  @override
  String toString() => super.toString();
}

/// A class which mocks [FlutterProcess].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterProcess extends _i1.Mock implements _i10.FlutterProcess {
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  _i9.Future<_i4.Process> startWith({List<String>? args}) =>
      (super.noSuchMethod(Invocation.method(#startWith, [], {#args: args}),
              returnValue: Future<_i4.Process>.value(_FakeProcess_2()))
          as _i9.Future<_i4.Process>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [HttpService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpService extends _i1.Mock implements _i5.HttpService {
  @override
  _i9.Future<_i5.SimpleHttpResponse> putBinary(
          {String? to,
          _i9.Stream<List<int>>? data,
          int? contentLength,
          Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#putBinary, [], {
                #to: to,
                #data: data,
                #contentLength: contentLength,
                #headers: headers
              }),
              returnValue: Future<_i5.SimpleHttpResponse>.value(
                  _FakeSimpleHttpResponse_3()))
          as _i9.Future<_i5.SimpleHttpResponse>);
  @override
  _i9.Future<_i5.SimpleHttpResponse> postJson(
          {String? to,
          Map<String, dynamic>? body,
          Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #postJson, [], {#to: to, #body: body, #headers: headers}),
              returnValue: Future<_i5.SimpleHttpResponse>.value(
                  _FakeSimpleHttpResponse_3()))
          as _i9.Future<_i5.SimpleHttpResponse>);
  @override
  _i9.Future<_i5.SimpleHttpResponse> get(
          {String? to, Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#get, [], {#to: to, #headers: headers}),
              returnValue: Future<_i5.SimpleHttpResponse>.value(
                  _FakeSimpleHttpResponse_3()))
          as _i9.Future<_i5.SimpleHttpResponse>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [TimeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTimeService extends _i1.Mock implements _i11.TimeService {
  @override
  DateTime now() => (super.noSuchMethod(Invocation.method(#now, []),
      returnValue: _FakeDateTime_4()) as DateTime);
  @override
  String toString() => super.toString();
}

/// A class which mocks [CloudFunctionsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCloudFunctionsService extends _i1.Mock
    implements _i12.CloudFunctionsService {
  @override
  _i6.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_5())
          as _i6.Logger);
  @override
  _i5.HttpService get httpService =>
      (super.noSuchMethod(Invocation.getter(#httpService),
          returnValue: _FakeHttpService_6()) as _i5.HttpService);
  @override
  _i9.Future<String> getV4BuildUploadSignedUrl(
          String? projectId, String? apiKey,
          [Map<dynamic, dynamic>? extensionHeaders = const {}]) =>
      (super.noSuchMethod(
          Invocation.method(#getV4BuildUploadSignedUrl,
              [projectId, apiKey, extensionHeaders]),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<void> uploadAutomationKeys(
          String? projectId, String? apiKey, List<String>? automationKeys) =>
      (super.noSuchMethod(
          Invocation.method(
              #uploadAutomationKeys, [projectId, apiKey, automationKeys]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<bool> doesBuildExistInProject(String? projectId,
          {String? withVersion}) =>
      (super.noSuchMethod(
          Invocation.method(#doesBuildExistInProject, [projectId],
              {#withVersion: withVersion}),
          returnValue: Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<String> uploadWidgetDescriptionToProject(
          {String? projectId, _i13.WidgetDescription? description}) =>
      (super.noSuchMethod(
          Invocation.method(#uploadWidgetDescriptionToProject, [],
              {#projectId: projectId, #description: description}),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<List<_i13.WidgetDescription>> getWidgetDescriptionForProject(
          {String? projectId}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getWidgetDescriptionForProject, [], {#projectId: projectId}),
              returnValue: Future<List<_i13.WidgetDescription>>.value(
                  <_i13.WidgetDescription>[]))
          as _i9.Future<List<_i13.WidgetDescription>>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [DynamicKeysGenerator].
///
/// See the documentation for Mockito's code generation for more information.
class MockDynamicKeysGenerator extends _i1.Mock
    implements _i14.DynamicKeysGenerator {
  @override
  _i2.FileSystemService get fileSystemService =>
      (super.noSuchMethod(Invocation.getter(#fileSystemService),
          returnValue: _FakeFileSystemService_0()) as _i2.FileSystemService);
  @override
  List<String> generateAutomationKeysForDynamicKey(
          {String? key, int? numberOfAutomationKeysToGenerate}) =>
      (super.noSuchMethod(
          Invocation.method(#generateAutomationKeysForDynamicKey, [], {
            #key: key,
            #numberOfAutomationKeysToGenerate: numberOfAutomationKeysToGenerate
          }),
          returnValue: <String>[]) as List<String>);
  @override
  List<String> generateAutomationKeysFromDynamicKeysFile(
          String? dynamicKeysFilePath) =>
      (super.noSuchMethod(
          Invocation.method(#generateAutomationKeysFromDynamicKeysFile,
              [dynamicKeysFilePath]),
          returnValue: <String>[]) as List<String>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [UploadService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUploadService extends _i1.Mock implements _i15.UploadService {
  @override
  _i9.Future<void> uploadBuild(
          _i3.BuildInfo? buildInfo, String? projectId, String? apiKey) =>
      (super.noSuchMethod(
          Invocation.method(#uploadBuild, [buildInfo, projectId, apiKey]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [AutomationKeysService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAutomationKeysService extends _i1.Mock
    implements _i16.AutomationKeysService {
  @override
  List<String> extractKeysListFromJson() =>
      (super.noSuchMethod(Invocation.method(#extractKeysListFromJson, []),
          returnValue: <String>[]) as List<String>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [WidgetCaptureService].
///
/// See the documentation for Mockito's code generation for more information.
class MockWidgetCaptureService extends _i1.Mock
    implements _i17.WidgetCaptureService {
  @override
  _i6.Logger get log =>
      (super.noSuchMethod(Invocation.getter(#log), returnValue: _FakeLogger_5())
          as _i6.Logger);
  @override
  Map<String, List<_i13.WidgetDescription>> get widgetDescriptionMap =>
      (super.noSuchMethod(Invocation.getter(#widgetDescriptionMap),
              returnValue: <String, List<_i13.WidgetDescription>>{})
          as Map<String, List<_i13.WidgetDescription>>);
  @override
  bool get verbose =>
      (super.noSuchMethod(Invocation.getter(#verbose), returnValue: false)
          as bool);
  @override
  _i9.Future<void> captureWidgetDescription(
          {_i13.WidgetDescription? description, String? projectId}) =>
      (super.noSuchMethod(
          Invocation.method(#captureWidgetDescription, [],
              {#description: description, #projectId: projectId}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> loadWidgetDescriptionsForProject({String? projectId}) =>
      (super.noSuchMethod(
          Invocation.method(
              #loadWidgetDescriptionsForProject, [], {#projectId: projectId}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  void addWidgetDescriptionToMap(_i13.WidgetDescription? description) =>
      super.noSuchMethod(
          Invocation.method(#addWidgetDescriptionToMap, [description]),
          returnValueForMissingStub: null);
  @override
  List<_i13.WidgetDescription> getDescriptionsForView({String? currentRoute}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getDescriptionsForView, [], {#currentRoute: currentRoute}),
              returnValue: <_i13.WidgetDescription>[])
          as List<_i13.WidgetDescription>);
  @override
  bool checkCurrentViewIfAlreadyCaptured(String? viewName) =>
      (super.noSuchMethod(
          Invocation.method(#checkCurrentViewIfAlreadyCaptured, [viewName]),
          returnValue: false) as bool);
  @override
  String toString() => super.toString();
}

/// A class which mocks [TestSweetsRouteTracker].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestSweetsRouteTracker extends _i1.Mock
    implements _i18.TestSweetsRouteTracker {
  @override
  String get currentRoute =>
      (super.noSuchMethod(Invocation.getter(#currentRoute), returnValue: '')
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
  void addListener(_i19.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i19.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}
