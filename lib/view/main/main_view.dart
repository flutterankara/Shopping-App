import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/resources/d_colors.dart';
import 'package:pawcat/view/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

part 'main_view.g.dart';

@swidget
Widget mainView(void data) => ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (_, model, __) => Scaffold(
        extendBody: true,
        body: IndexedStack(index: model.currentIndex, children: [for (var i in model.pages) i.page]),
        bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(0.2), offset: Offset(1, 2))],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
          ),
          child: BottomNavigationBar(
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            elevation: 1,
            type: BottomNavigationBarType.fixed,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            backgroundColor: Colors.white,
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            selectedItemColor: DColors.primary,
            items: [
              for (var i in model.pages)
                BottomNavigationBarItem(
                  label: i.label,
                  icon: i.icon,
                  activeIcon: i.activeIcon,
                ),
            ],
          ),
        ),
      ),
    );
