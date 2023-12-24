import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/view/main/subviews/home/home_view.dart';

@swidget
Widget productWidget(Product product,
        {Function(Product product)? addToCart, Function(Product product)? addToFavorite}) =>
    Card(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(
            product.imageUrl,
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.name, style: TextStyle(fontSize: 16)),
          ),
          Text('${product.price} \$', style: TextStyle(fontSize: 14, color: Colors.green)),
          Row(
            children: [
              if (addToCart != null)
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () => addToCart(product),
                ),
              Spacer(),
              if (addToFavorite != null)
                IconButton(
                  icon: Icon(Icons.favorite_border_outlined),
                  onPressed: () => addToFavorite(product),
                ),
            ],
          )
        ],
      ),
    );
