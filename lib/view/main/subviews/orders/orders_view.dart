
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/main/subviews/orders/orders_view_model.dart';
import 'package:stacked/stacked.dart';

part 'orders_view.g.dart';

@swidget
Widget ordersView(void data) => ViewModelBuilder<OrdersViewModel>.reactive(
      viewModelBuilder: () => OrdersViewModel(),
      builder: (_, model, __) => const Scaffold(),
    );
