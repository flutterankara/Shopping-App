
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/main/main_view_model.dart';
import 'package:pawcat/view/search/seacrh_view_model.dart';
import 'package:stacked/stacked.dart';

part 'search_view.g.dart';

@swidget
Widget searchView(void data) => ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      builder: (_, model, __) => const Scaffold(),
    );
