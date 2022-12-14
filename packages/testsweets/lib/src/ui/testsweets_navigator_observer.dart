import 'package:flutter/material.dart';
import 'package:testsweets/src/locator.dart';
import 'package:testsweets/src/services/testsweets_route_tracker.dart';

class TestSweetsNavigatorObserver extends NavigatorObserver {
  final routeTracker = locator<TestSweetsRouteTracker>();

  static final TestSweetsNavigatorObserver _instance =
      TestSweetsNavigatorObserver._internal();

  TestSweetsNavigatorObserver._internal();

  static TestSweetsNavigatorObserver get instance => _instance;

  @override
  void didPop(Route route, Route? previousRoute) {
    routeTracker.setCurrentRoute(_getRouteName(previousRoute));
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    routeTracker.setCurrentRoute(_getRouteName(route));
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    routeTracker.setCurrentRoute(_getRouteName(newRoute));
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  /// Creates a unique name for each bottom nav tab to ensure widgets are captured
  /// as if each tab is a new view
  void setBottomNavIndex({
    required int index,
    required String viewName,
  }) {
    routeTracker.changeRouteIndex(viewName, index);
  }

  String _getRouteName(Route? route) {
    return route?.settings.name ?? 'NoView';
  }
}
