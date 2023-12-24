import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/resources/d_colors.dart';
import 'package:pawcat/view/main/main_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';

part 'main_view.g.dart';

@swidget
Widget mainView(void data) => ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (_, model, __) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xff021f33),
          title:  Text("pawket", style: GoogleFonts.fredoka(color: Colors.white, textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.w500),), ),
        ),
        extendBody: true,
        body: IndexedStack(index: model.currentIndex, children: [for (var i in model.pages) i.page]),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(16.0),

          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(
             14
            ),


          ),
          child: BottomNavigationBar(

            unselectedItemColor: Colors.black54,
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            elevation: 1,
            type: BottomNavigationBarType.fixed,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            backgroundColor: DColors.grey1,
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            selectedItemColor: Colors.black,

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




//some widget )