
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/main/main_view_model.dart';
import 'package:pawcat/view/main/subviews/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

part 'home_view.g.dart';

@swidget
Widget homeView(void data) => ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (_, model, __) => const Scaffold(),
    );
