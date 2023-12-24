import 'package:flutter/material.dart';
import 'package:pawcat/resources/d_colors.dart';
import 'package:pawcat/view/main/subviews/cart/cart_view.dart';
import 'package:pawcat/view/main/subviews/home/home_view.dart';
import 'package:pawcat/view/main/subviews/orders/orders_view.dart';
import 'package:pawcat/view/main/subviews/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends IndexTrackingViewModel {
  late final List<PageType> pages = PageType.values;

  @override
  void setIndex(int index) {
    super.setIndex(index);
    notifyListeners();
  }
}

enum PageType {
  home(
    page: HomeView(null),
    topColorControl: false,
    color: Colors.white,
    label: 'Anasayfa',
    icon: Icon(Icons.home_outlined, size: 25),
    activeIcon: Icon(Icons.home_outlined, color: DColors.primary, size: 25),
  ),
  cart(
    page: CartView(null),
    topColorControl: true,
    color: Color.fromRGBO(214, 94, 94, 1.0),
    label: 'Sepetim',
    icon: Icon(Icons.shopping_bag_outlined, size: 25),
    activeIcon: Icon(Icons.shopping_bag_outlined, color: DColors.primary, size: 25),
  ),
  orders(
    page: OrdersView(null),
    topColorControl: false,
    color: Colors.white,
    label: 'Siparişlerim',
    icon: Icon(Icons.shopping_basket_outlined, size: 25),
    activeIcon: Icon(Icons.shopping_basket_outlined, color: DColors.primary, size: 25),
  ),
  profile(
    page: ProfileView(null),
    topColorControl: true,
    color: DColors.primary,
    label: 'Profil',
    icon: Icon(Icons.person_2_outlined, size: 25),
    activeIcon: Icon(Icons.person_2_outlined, color: DColors.primary, size: 25),
  );

  final Widget page;
  final bool topColorControl;
  final Color color;
  final String label;
  final Icon icon;
  final Icon activeIcon;

  const PageType(
      {required this.page,
      required this.topColorControl,
      required this.color,
      required this.label,
      required this.icon,
      required this.activeIcon});
}
