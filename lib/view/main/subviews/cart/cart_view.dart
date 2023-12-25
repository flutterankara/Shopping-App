import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:stacked/stacked.dart';

import 'cart_view_model.dart';

part 'cart_view.g.dart';

@swidget
Widget cartView(void data) => ViewModelBuilder<CartViewModel>.reactive(
      viewModelBuilder: () => CartViewModel(),
      builder: (_, model, __) => const Scaffold(),
    );
