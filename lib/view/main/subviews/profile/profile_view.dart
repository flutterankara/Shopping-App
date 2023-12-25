import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/routing/routes.dart';
import 'package:pawcat/view/main/subviews/profile/profile_view_model.dart';
import 'package:stacked/stacked.dart';
import '../../../../resources/d_colors.dart';
part 'profile_view.g.dart';

@swidget
Widget profileView(void data) => ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (_, model, __) => Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 16.0),
              height: 270,
              decoration: BoxDecoration(
                color: DColors.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                              'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Leonardo Palmeiro',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: DColors.grey1,
                      height: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(
                        color: DColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'palmeiro.leonardo@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Routes.favorite.call();
                    },
                    title: Text(
                      'Favoriler',
                      style: TextStyle(
                        color: DColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
