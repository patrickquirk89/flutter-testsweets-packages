import 'package:flutter/material.dart';
import 'package:testsweets/src/app/logger.dart';
import 'package:testsweets/src/extensions/string_extension.dart';
import 'package:testsweets/src/locator.dart';
import 'package:testsweets/src/models/application_models.dart';
import 'package:testsweets/src/services/cloud_functions_service.dart';

/// A service that facilitates the capturing of widgets on device
class WidgetCaptureService {
  final log = getLogger('WidgetCaptureService');

  final _cloudFunctionsService = locator<CloudFunctionsService>();

  @visibleForTesting
  final widgetDescriptionMap = Map<String, List<Interaction>>();
  late String _projectId;

  set projectId(String projectId) {
    _projectId = projectId;
  }

  final bool verbose;
  WidgetCaptureService({this.verbose = false}) {
    if (verbose) {
      projectId = 'projectId';
    }
  }

  /// Gets all the widget descriptions the project and stores them in a map
  Future<void> loadWidgetDescriptionsForProject() async {
    final widgetDescriptions = await _cloudFunctionsService
        .getWidgetDescriptionForProject(projectId: _projectId);

    widgetDescriptionMap.clear();

    for (final description in widgetDescriptions) {
      addWidgetDescriptionToMap = description;
    }
  }

  set addWidgetDescriptionToMap(Interaction description) {
    log.v(description);
    if (widgetDescriptionMap.containsKey(description.originalViewName)) {
      widgetDescriptionMap[description.originalViewName]?.add(description);
    } else {
      widgetDescriptionMap[description.originalViewName] = [description];
    }
  }

  /// Captures a widgets description to the backend as well as locally in the [widgetDescriptionMap]
  Future<String> captureWidgetDescription({
    required Interaction description,
  }) async {
    log.i('description:$description projectId:$_projectId');

    await _checkViewIfExistOrCaptureIt(description.originalViewName);

    final descriptionId =
        await _cloudFunctionsService.uploadWidgetDescriptionToProject(
      projectId: _projectId,
      description: description,
    );

    log.i('descriptionId from Cloud: $descriptionId');
    return descriptionId;
  }

  /// Updates a widget description to the backend as well as locally in the [widgetDescriptionMap]
  Future<String?> updateWidgetDescription({
    required Interaction description,
  }) async {
    try {
      log.i('description:$description projectId:$_projectId');

      final widgetToUpdate = widgetDescriptionMap[description.originalViewName]
          ?.firstWhere((element) => element.id == description.id);

      final descriptionId =
          await _cloudFunctionsService.updateWidgetDescription(
              projectId: _projectId,
              newwidgetDescription: description,
              oldwidgetDescription: widgetToUpdate!);

      log.i('descriptionId from Cloud: $descriptionId');
      return null;
    } catch (e) {
      log.e(e);
      return e.toString();
    }
  }

  /// Delete a widget descriptions from the project as well as locally
  Future<String?> removeWidgetDescription(
      {required Interaction description}) async {
    try {
      final descriptionId =
          await _cloudFunctionsService.deleteWidgetDescription(
              projectId: _projectId, description: description);

      log.i('descriptionId from Cloud: $descriptionId');
      return null;
    } catch (e) {
      log.e(e);
      return e.toString();
    }
  }

  Future<void> _checkViewIfExistOrCaptureIt(String originalViewName) async {
    if (!checkCurrentViewIfAlreadyCaptured(originalViewName)) {
      log.i('originalViewName:$originalViewName projectId:$_projectId');

      final viewDescription = Interaction.view(
          viewName: originalViewName.convertViewNameToValidFormat,
          originalViewName: originalViewName);

      final descriptionId =
          await _cloudFunctionsService.uploadWidgetDescriptionToProject(
        projectId: _projectId,
        description: viewDescription,
      );
      log.v('descriptionId from Cloud: $descriptionId');

      // Add view to descriptionMap with id from the backend
      addWidgetDescriptionToMap = viewDescription.copyWith(id: descriptionId);
    }
  }

  List<Interaction> getDescriptionsForView({required String currentRoute}) {
    var viewDescriptions = widgetDescriptionMap[currentRoute];
    log.v('currentRoute:$currentRoute viewDescriptions:$viewDescriptions');

    final potentialParentRoute = currentRoute.replaceAll(RegExp('[0-9]'), '');

    if (currentRoute != potentialParentRoute) {
      final additionalDescriptions = widgetDescriptionMap[potentialParentRoute];
      if (additionalDescriptions != null) {
        log.v('Parent route has descriptions: $potentialParentRoute');

        viewDescriptions = [...?viewDescriptions, ...additionalDescriptions];
      }
    }

    return viewDescriptions ?? [];
  }

  bool checkCurrentViewIfAlreadyCaptured(String originalViewName) =>
      widgetDescriptionMap.containsKey(originalViewName)
          ? widgetDescriptionMap[originalViewName]!
              .any((element) => element.name == '')
          : false;

  void syncRouteInteractions(String routeName, List<Interaction> interactions) {
    widgetDescriptionMap.update(
      routeName,
      (_) => interactions,
      ifAbsent: () => interactions,
    );
  }
}
