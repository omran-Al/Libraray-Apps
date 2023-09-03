import 'package:flutter/material.dart';
import 'package:ui_libraray_apps/screen/home_screen/home_screen.dart';

import '../screen/wlecom_screen/welcom_screen.dart';

class Screens {
  static const String welcomScreen = "/";
  static const String homeScreen = "/mainScreen";
}

class RouteGenerator {
  static Route<dynamic>? getRoutes(
    RouteSettings settings, {
    required BuildContext context,
  }) {
    switch (settings.name) {
      case Screens.welcomScreen:
        return MaterialPageRoute(builder: (_) => const WelcomScreen());
      case Screens.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Not Found Page")),
        body: const Center(child: Text("Not Found Page")),
      ),
    );
  }
}
