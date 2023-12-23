
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/main/main_view_model.dart';
import 'package:pawcat/view/main/subviews/profile/profile_view_model.dart';
import 'package:stacked/stacked.dart';

part 'profile_view.g.dart';

@swidget
Widget mainView(void data) => ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (_, model, __) => const Scaffold(),
    );
