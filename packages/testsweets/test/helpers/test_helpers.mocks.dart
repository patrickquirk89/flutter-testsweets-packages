// Mocks generated by Mockito 5.0.10 from annotations
// in testsweets/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i8;
import 'dart:io' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:testsweets/src/models/application_models.dart' as _i12;
import 'package:testsweets/src/models/build_info.dart' as _i3;
import 'package:testsweets/src/services/automation_keys_service.dart' as _i15;
import 'package:testsweets/src/services/build_service.dart' as _i7;
import 'package:testsweets/src/services/cloud_functions_service.dart' as _i11;
import 'package:testsweets/src/services/dynamic_keys_generator.dart' as _i13;
import 'package:testsweets/src/services/file_system_service.dart' as _i2;
import 'package:testsweets/src/services/http_service.dart' as _i5;
import 'package:testsweets/src/services/runnable_process.dart' as _i9;
import 'package:testsweets/src/services/test_sweets_config_file_service.dart'
    as _i6;
import 'package:testsweets/src/services/time_service.dart' as _i10;
import 'package:testsweets/src/services/upload_service.dart' as _i14;
import 'package:testsweets/src/services/widget_capture_service.dart' as _i16;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeFileSystemService extends _i1.Fake implements _i2.FileSystemService {
}

class _FakeBuildInfo extends _i1.Fake implements _i3.BuildInfo {
  @override
  String toString() => super.toString();
}

class _FakeProcess extends _i1.Fake implements _i4.Process {}

class _FakeSimpleHttpResponse extends _i1.Fake
    implements _i5.SimpleHttpResponse {}

class _FakeDateTime extends _i1.Fake implements DateTime {
  @override
  String toString() => super.toString();
}

class _FakeHttpService extends _i1.Fake implements _i5.HttpService {}

/// A class which mocks [TestSweetsConfigFileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestSweetsConfigFileService extends _i1.Mock
    implements _i6.TestSweetsConfigFileService {
  @override
  _i2.FileSystemService get fileSystemService =>
      (super.noSuchMethod(Invocation.getter(#fileSystemService),
          returnValue: _FakeFileSystemService()) as _i2.FileSystemService);
  @override
  String getValueFromConfigFileByKey(_i6.ConfigFileKeyType? keyType) => (super
      .noSuchMethod(Invocation.method(#getValueFromConfigFileByKey, [keyType]),
          returnValue: '') as String);
}

/// A class which mocks [BuildService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBuildService extends _i1.Mock implements _i7.BuildService {
  @override
  _i8.Future<_i3.BuildInfo> build(
          {String? appType,
          List<String>? extraFlutterProcessArgs,
          String? pathToBuild}) =>
      (super.noSuchMethod(
              Invocation.method(#build, [], {
                #appType: appType,
                #extraFlutterProcessArgs: extraFlutterProcessArgs,
                #pathToBuild: pathToBuild
              }),
              returnValue: Future<_i3.BuildInfo>.value(_FakeBuildInfo()))
          as _i8.Future<_i3.BuildInfo>);
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
  _i8.Stream<List<int>> openFileForReading(String? path) =>
      (super.noSuchMethod(Invocation.method(#openFileForReading, [path]),
          returnValue: Stream<List<int>>.empty()) as _i8.Stream<List<int>>);
  @override
  int getFileSizeInBytes(String? path) =>
      (super.noSuchMethod(Invocation.method(#getFileSizeInBytes, [path]),
          returnValue: 0) as int);
}

/// A class which mocks [FlutterProcess].
///
/// See the documentation for Mockito's code generation for more information.
class MockFlutterProcess extends _i1.Mock implements _i9.FlutterProcess {
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  _i8.Future<_i4.Process> startWith({List<String>? args}) =>
      (super.noSuchMethod(Invocation.method(#startWith, [], {#args: args}),
              returnValue: Future<_i4.Process>.value(_FakeProcess()))
          as _i8.Future<_i4.Process>);
}

/// A class which mocks [HttpService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpService extends _i1.Mock implements _i5.HttpService {
  @override
  _i8.Future<_i5.SimpleHttpResponse> putBinary(
          {String? to,
          _i8.Stream<List<int>>? data,
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
                  _FakeSimpleHttpResponse()))
          as _i8.Future<_i5.SimpleHttpResponse>);
  @override
  _i8.Future<_i5.SimpleHttpResponse> postJson(
          {String? to,
          Map<String, dynamic>? body,
          Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #postJson, [], {#to: to, #body: body, #headers: headers}),
              returnValue: Future<_i5.SimpleHttpResponse>.value(
                  _FakeSimpleHttpResponse()))
          as _i8.Future<_i5.SimpleHttpResponse>);
  @override
  _i8.Future<_i5.SimpleHttpResponse> get(
          {String? to, Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#get, [], {#to: to, #headers: headers}),
              returnValue: Future<_i5.SimpleHttpResponse>.value(
                  _FakeSimpleHttpResponse()))
          as _i8.Future<_i5.SimpleHttpResponse>);
}

/// A class which mocks [TimeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTimeService extends _i1.Mock implements _i10.TimeService {
  @override
  DateTime now() => (super.noSuchMethod(Invocation.method(#now, []),
      returnValue: _FakeDateTime()) as DateTime);
}

/// A class which mocks [CloudFunctionsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockCloudFunctionsService extends _i1.Mock
    implements _i11.CloudFunctionsService {
  @override
  _i5.HttpService get httpService =>
      (super.noSuchMethod(Invocation.getter(#httpService),
          returnValue: _FakeHttpService()) as _i5.HttpService);
  @override
  _i8.Future<String> getV4BuildUploadSignedUrl(
          String? projectId, String? apiKey,
          [Map<dynamic, dynamic>? extensionHeaders = const {}]) =>
      (super.noSuchMethod(
          Invocation.method(#getV4BuildUploadSignedUrl,
              [projectId, apiKey, extensionHeaders]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<void> uploadAutomationKeys(
          String? projectId, String? apiKey, List<String>? automationKeys) =>
      (super.noSuchMethod(
          Invocation.method(
              #uploadAutomationKeys, [projectId, apiKey, automationKeys]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i8.Future<void>);
  @override
  _i8.Future<bool> doesBuildExistInProject(String? projectId,
          {String? withVersion}) =>
      (super.noSuchMethod(
          Invocation.method(#doesBuildExistInProject, [projectId],
              {#withVersion: withVersion}),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
  @override
  _i8.Future<String> uploadWidgetDescriptionToProject(
          {String? projectId, _i12.WidgetDescription? description}) =>
      (super.noSuchMethod(
          Invocation.method(#uploadWidgetDescriptionToProject, [],
              {#projectId: projectId, #description: description}),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
}

/// A class which mocks [DynamicKeysGenerator].
///
/// See the documentation for Mockito's code generation for more information.
class MockDynamicKeysGenerator extends _i1.Mock
    implements _i13.DynamicKeysGenerator {
  @override
  _i2.FileSystemService get fileSystemService =>
      (super.noSuchMethod(Invocation.getter(#fileSystemService),
          returnValue: _FakeFileSystemService()) as _i2.FileSystemService);
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
}

/// A class which mocks [UploadService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUploadService extends _i1.Mock implements _i14.UploadService {
  @override
  _i8.Future<void> uploadBuild(
          _i3.BuildInfo? buildInfo, String? projectId, String? apiKey) =>
      (super.noSuchMethod(
          Invocation.method(#uploadBuild, [buildInfo, projectId, apiKey]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i8.Future<void>);
}

/// A class which mocks [AutomationKeysService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAutomationKeysService extends _i1.Mock
    implements _i15.AutomationKeysService {
  @override
  List<String> extractKeysListFromJson() =>
      (super.noSuchMethod(Invocation.method(#extractKeysListFromJson, []),
          returnValue: <String>[]) as List<String>);
}

/// A class which mocks [WidgetCaptureService].
///
/// See the documentation for Mockito's code generation for more information.
class MockWidgetCaptureService extends _i1.Mock
    implements _i16.WidgetCaptureService {
  @override
  Map<String, _i12.WidgetDescription> get widgetDescriptionMap =>
      (super.noSuchMethod(Invocation.getter(#widgetDescriptionMap),
              returnValue: <String, _i12.WidgetDescription>{})
          as Map<String, _i12.WidgetDescription>);
  @override
  bool get verbose =>
      (super.noSuchMethod(Invocation.getter(#verbose), returnValue: false)
          as bool);
  @override
  _i8.Future<void> captureWidgetDescription(
          {_i12.WidgetDescription? description, String? projectId}) =>
      (super.noSuchMethod(
          Invocation.method(#captureWidgetDescription, [],
              {#description: description, #projectId: projectId}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i8.Future<void>);
  @override
  void log(String? message) =>
      super.noSuchMethod(Invocation.method(#log, [message]),
          returnValueForMissingStub: null);
}
