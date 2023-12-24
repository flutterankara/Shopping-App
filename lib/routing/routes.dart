import 'package:flutter/material.dart';
import 'package:pawcat/locator.dart';
import 'package:pawcat/view/favorite/favorite_view.dart';
import 'package:pawcat/view/login/login_view.dart';
import 'package:pawcat/view/main/main_view.dart';
import 'package:pawcat/view/main/subviews/home/home_view.dart';
import 'package:pawcat/view/main/subviews/orders/orders_view.dart';
import 'package:pawcat/view/main/subviews/profile/profile_view.dart';
import 'package:pawcat/view/product/product_view.dart';
import 'package:pawcat/view/search/search_view.dart';

enum Routes<P> {
  login(LoginView.new),
  product(ProductView.new),
  favorite(FavoriteView.new),
  search(SearchView.new),
  home(HomeView.new),
  main(MainView.new),
  profile(ProfileView.new),
  orders(OrdersView.new);

  final Widget Function(P) _wb;

  const Routes(this._wb);

  Widget viewBuilder(String? p) => _wb(_unmap(p));

  Future<T?>? call<T>({P? data, bool replace = false, bool clearStack = false}) =>
      toUri(data: data).go(replace: replace, clearStack: clearStack);

  void returnBack() => navigator.goBackUntil(this);

  Uri toUri({P? data}) => Uri(path: name, queryParameters: data != null ? {'q': _map(data)} : null);
}

extension UriRouteExtensions on Uri {
  bool contains(Routes route, [arg]) {
    if (path != route.name) return false;
    if (arg == null) return true;
    return queryParameters.values.contains(_map(arg));
  }

  Routes get route => Routes.values.byName(path);

  Future<T?>? go<T>({bool replace = false, bool clearStack = false}) =>
      navigator.navigateTo(this, replace: replace, clearStack: clearStack);
}

String _map(value) {
  if (value is Enum) return value.name;
  return value.toString();
}

T _unmap<T>(String? param) {
  if (T == int) return int.tryParse(param!)! as T;
  // if (T == bool) return param?.parseBool() as T;
  return param as T;
}
