import 'package:flutter/material.dart';
import 'package:ui_libraray_apps/resources/router_manager.dart';

import '../resources/color_apps.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      onGenerateRoute: (settings) =>
          RouteGenerator.getRoutes(settings, context: context),
      initialRoute: Screens.welcomScreen,
    );
  }
}
