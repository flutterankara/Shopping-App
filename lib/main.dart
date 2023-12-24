import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/locator.dart';
import 'package:pawcat/resources/theme.dart';
import 'package:pawcat/routing/routes.dart';

part 'main.g.dart';

const supportedLocales = [Locale("tr")];
void main() {
  initDependencies();
  runApp(Pawcat(Routes.login.name));
}

@swidget
Widget pawcat(BuildContext context, String firstRoute) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'PAWCAT',
    // supportedLocales: supportedLocales,
    theme: theme,
    builder: (_, child) {
      // child = LoadingObserver(child: child!);
      return child!;
    },
    locale: Locale("tr"),
    navigatorKey: navigator.navigatorKey,
    navigatorObservers: [navigator.routeObserver],
    onGenerateRoute: (settings) => onGenerateRoute(settings),
    initialRoute: firstRoute,
  );
}

Route<dynamic> onGenerateRoute(RouteSettings settings) =>
    (Platform.isIOS ? CupertinoPageRoute.new : MaterialPageRoute.new)(
        settings: settings,
        builder: (_) {
          final uri = Uri.parse(settings.name!);
          final route = uri.route;
          Widget child = route.viewBuilder(uri.queryParameters['q']);
          // child = Scaffold(body: SafeArea(child: AppBar(title: Text(route.name))));
          return child;
        });
