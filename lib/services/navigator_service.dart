import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pawcat/routing/routes.dart';

@lazySingleton
class NavigatorService {
  final routeObserver = RouteObserver<PageRoute>();
  final navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState? get _currentState => navigatorKey.currentState;

  BuildContext? get _context => _currentState?.overlay?.context;

  BuildContext get context => _context!;

  double get width => MediaQuery.of(context).size.width;

  double get height => MediaQuery.of(context).size.height;

  Future<T?>? navigateTo<T>(Uri uri, {bool replace = false, bool clearStack = false}) {
    final route = uri.toString();
    if (clearStack) return _currentState?.pushNamedAndRemoveUntil(route, (r) => false);
    if (replace) return _currentState?.pushReplacementNamed(route);
    return _currentState?.pushNamed(route);
  }

  void goBack<T extends Object>([T? result]) => _currentState?.pop(result);

  void goBackUntil<T extends Object>(Routes until) => _currentState?.popUntil((r) => r.settings.name == until.name);


  closeKeyboard() => FocusScope.of(context).unfocus();
}
