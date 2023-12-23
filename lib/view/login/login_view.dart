
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/login/login_view_model.dart';
import 'package:stacked/stacked.dart';

part 'login_view.g.dart';

@swidget
Widget loginView(void data) => ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (_, model, __) => const Scaffold(),
    );
