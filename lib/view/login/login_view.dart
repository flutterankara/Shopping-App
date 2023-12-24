
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/login/login_view_model.dart';

part 'login_view.g.dart';

@swidget
Widget loginView(void data) => ViewModelBuilder<LoginViewModel>.reactive(
  viewModelBuilder: () => LoginViewModel(),
  builder: (_, model, __) => Scaffold(
    appBar: AppBar(
      title: Text('Giriş', style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold, color: Color(0xFFF9F9F9))), backgroundColor: Color(0xFF021f33),
    ),
    body: Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            onChanged: (value) {
              // Email değiştiğinde burada işlemler yapabilirsiniz.
              model.setEmail(value);
            },
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 16.0),
          TextField(
            onChanged: (value) {
              // Şifre değiştiğinde burada işlemler yapabilirsiniz.
              model.setPassword(value);
            },
            obscureText: true,
            decoration: InputDecoration(labelText: 'Şifre'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Giriş butonuna basıldığında burada ViewModel'deki işlemleri çağırabilirsiniz.
              model.login();
            },
            child: Text('Giriş Yap'),
          ),
        ],
      ),
    ),
  ),
);