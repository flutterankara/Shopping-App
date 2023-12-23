
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/main/main_view_model.dart';
import 'package:pawcat/view/product/product_view_model.dart';
import 'package:stacked/stacked.dart';

part 'product_view.g.dart';

@swidget
Widget productView(void data) => ViewModelBuilder<ProductViewModel>.reactive(
      viewModelBuilder: () => ProductViewModel(),
      builder: (_, model, __) => const Scaffold(),
    );
