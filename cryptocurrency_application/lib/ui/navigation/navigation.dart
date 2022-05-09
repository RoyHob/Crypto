import 'package:flutter/material.dart';

class Routes {
  static const String homeRoute = "/home";
  static const String favoriteRoute = "/favorite";
  static const String settingsRoute = "/settings";
}

Future<void> navigateToHomeRoute(BuildContext context) {
  return Navigator.of(context).pushNamed(Routes.homeRoute);
}

Future<void> navigateToFavoriteRoute(BuildContext context) {
  return Navigator.of(context).pushNamed(Routes.favoriteRoute);
}

Future<void> navigateToSettingsRoute(BuildContext context) {
  return Navigator.of(context).pushNamed(Routes.settingsRoute);
}