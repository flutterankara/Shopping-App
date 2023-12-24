import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/favorite/favorite_view_model.dart';
import 'package:pawcat/widgets/product_widget/product_widget.dart';
import 'package:stacked/stacked.dart';

part 'favorite_view.g.dart';

@swidget
Widget favoriteView(void data) => ViewModelBuilder<FavoriteViewModel>.reactive(
      viewModelBuilder: () => FavoriteViewModel(),
      builder: (_, model, __) => Scaffold(
        appBar: AppBar(
          title: Text('Favori Ürünler'),
          leading: BackButton(),
        ),
        body: ListView.builder(
          itemCount: model.favoriteProducts.length,
          itemBuilder: (context, index) {
            final product = model.favoriteProducts[index];
            return productWidget(product);
          },
        ),
      ),
    );
