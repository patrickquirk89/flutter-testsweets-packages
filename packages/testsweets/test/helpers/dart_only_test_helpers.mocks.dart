// Mocks generated by Mockito 5.1.0 from annotations
// in testsweets/test/helpers/dart_only_test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;
import 'dart:io' as _i4;

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
import 'package:testsweets/src/services/time_service.dart' as _i11;
import 'package:testsweets/src/services/upload_service.dart' as _i15;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeFileSystemServiceImplementation_0 extends _i1.Fake
    implements _i2.FileSystemServiceImplementation {}

class _FakeBuildInfo_1 extends _i1.Fake implements _i3.BuildInfo {}

class _FakeProcess_2 extends _i1.Fake implements _i4.Process {}

class _FakeSimpleHttpResponse_3 extends _i1.Fake
    implements _i5.SimpleHttpResponse {}

class _FakeDateTime_4 extends _i1.Fake implements DateTime {}

class _FakeLogger_5 extends _i1.Fake implements _i6.Logger {}

class _FakeHttpService_6 extends _i1.Fake implements _i5.HttpService {}

class _FakeFileSystemService_7 extends _i1.Fake
    implements _i2.FileSystemService {}

/// A class which mocks [TestSweetsConfigFileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestSweetsConfigFileService extends _i1.Mock
    implements _i7.TestSweetsConfigFileService {
  @override
  _i2.FileSystemServiceImplementation get fileSystemService =>
      (super.noSuchMethod(Invocation.getter(#fileSystemService),
              returnValue: _FakeFileSystemServiceImplementation_0())
          as _i2.FileSystemServiceImplementation);
  @override
  String getValueFromConfigFileByKey(_i7.ConfigFileKeyType? keyType) => (super
      .noSuchMethod(Invocation.method(#getValueFromConfigFileByKey, [keyType]),
          returnValue: '') as String);
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
}

/// A class which mocks [FileSystemService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileSystemService extends _i1.Mock implements _i2.FileSystemService {
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
  String fullPathToWorkingDirectory({String? fileName}) => (super.noSuchMethod(
      Invocation.method(#fullPathToWorkingDirectory, [], {#fileName: fileName}),
      returnValue: '') as String);
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
}

/// A class which mocks [TimeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTimeService extends _i1.Mock implements _i11.TimeService {
  @override
  DateTime now() => (super.noSuchMethod(Invocation.method(#now, []),
      returnValue: _FakeDateTime_4()) as DateTime);
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
  _i9.Future<bool> doesBuildExistInProject(String? projectId,
          {String? withVersion}) =>
      (super.noSuchMethod(
          Invocation.method(#doesBuildExistInProject, [projectId],
              {#withVersion: withVersion}),
          returnValue: Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<String> uploadWidgetDescriptionToProject(
          {String? projectId, _i13.Interaction? description}) =>
      (super.noSuchMethod(
          Invocation.method(#uploadWidgetDescriptionToProject, [],
              {#projectId: projectId, #description: description}),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<List<_i13.Interaction>> getWidgetDescriptionForProject(
          {String? projectId}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getWidgetDescriptionForProject, [], {#projectId: projectId}),
              returnValue:
                  Future<List<_i13.Interaction>>.value(<_i13.Interaction>[]))
          as _i9.Future<List<_i13.Interaction>>);
  @override
  _i9.Future<String> updateWidgetDescription(
          {String? projectId,
          _i13.Interaction? oldwidgetDescription,
          _i13.Interaction? newwidgetDescription}) =>
      (super.noSuchMethod(
          Invocation.method(#updateWidgetDescription, [], {
            #projectId: projectId,
            #oldwidgetDescription: oldwidgetDescription,
            #newwidgetDescription: newwidgetDescription
          }),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<String> deleteWidgetDescription(
          {String? projectId, _i13.Interaction? description}) =>
      (super.noSuchMethod(
          Invocation.method(#deleteWidgetDescription, [],
              {#projectId: projectId, #description: description}),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
}

/// A class which mocks [DynamicKeysGenerator].
///
/// See the documentation for Mockito's code generation for more information.
class MockDynamicKeysGenerator extends _i1.Mock
    implements _i14.DynamicKeysGenerator {
  @override
  _i2.FileSystemService get fileSystemService =>
      (super.noSuchMethod(Invocation.getter(#fileSystemService),
          returnValue: _FakeFileSystemService_7()) as _i2.FileSystemService);
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
class MockUploadService extends _i1.Mock implements _i15.UploadService {
  @override
  _i9.Future<void> uploadBuild(
          _i3.BuildInfo? buildInfo, String? projectId, String? apiKey) =>
      (super.noSuchMethod(
          Invocation.method(#uploadBuild, [buildInfo, projectId, apiKey]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
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
}
