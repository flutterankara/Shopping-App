import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/product/product_view_model.dart';
import 'package:stacked/stacked.dart';

part 'product_view.g.dart';

@swidget
Widget productView(void data) => ViewModelBuilder<ProductViewModel>.reactive(
      viewModelBuilder: () => ProductViewModel(),
      builder: (_, model, __) => Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
               color: Colors.black.withOpacity(0.5),
               height: 200,
               width: 200,
              ),
            ),
            // SizedBox(height: 200),
            Text(
             model.product.name,
             style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            Text(
             'Product Description: ${model.product.description}',
             style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(
             'Price: \$${model.product.price}',
             style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ],
        ),
      ),
    );