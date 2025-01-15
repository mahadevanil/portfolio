class RouteConstants {
  RouteConstants._();

  static const $RoutePath path = $RoutePath();
  static const $RouteName name = $RouteName();
}

class $RoutePath {
  const $RoutePath();
  String get initial => '/';
}

class $RouteName {
  const $RouteName();
  String get initial => '';
}
