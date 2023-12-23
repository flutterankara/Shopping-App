import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/resources/d_text_styles.dart';
import 'package:pawcat/view/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

part 'main_view.g.dart';

@swidget
Widget mainView(void data) => ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (_, model, __) => Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () => model.changeUser('Murat'),
            child: Column(
              children: [
                Text(
                  model.user,
                  style: DTextStyles.darkBold,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
