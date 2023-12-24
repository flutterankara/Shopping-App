import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pawcat/resources/dimens.dart';
import 'package:pawcat/view/main/subviews/home/home_view_model.dart';
import 'package:pawcat/widgets/product_widget/product_widget.dart';
import 'package:stacked/stacked.dart';
part 'home_view.g.dart';

@swidget
Widget homeView(void data) => ViewModelBuilder<HomeViewmodel>.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (_, model, __) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: model.categories.length,
                  itemBuilder: (_, index) {
                    final category = model.categories[index];
                    return GestureDetector(
                      onTap: () => model.filterProductsByCategory(category),
                      child: Container(
                        margin: EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: DDimens.s, horizontal: DDimens.l),
                            child: Text(category, style: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Ürün Listesi
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: model.displayedProducts.length,
                  itemBuilder: (_, index) {
                    final product = model.displayedProducts[index];
                    return productWidget(product, addToCart: model.addToCart, addToFavorite: (product) {});
                  },
                ),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => model.showCart(),
        //   child: Icon(Icons.shopping_cart),
        // ),
      ),
    );

class Product {
  final String name;
  final double price;
  final String imageUrl;
  final String category;

  Product(this.name, this.price, this.imageUrl, this.category);
}
