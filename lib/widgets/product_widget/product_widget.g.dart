// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_widget.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ProductWidget extends StatelessWidget {
  const ProductWidget(
    this.product, {
    Key? key,
    this.addToCart,
    this.addToFavorite,
  }) : super(key: key);

  final Product product;

  final dynamic Function(Product)? addToCart;

  final dynamic Function(Product)? addToFavorite;

  @override
  Widget build(BuildContext _context) => productWidget(
        product,
        addToCart: addToCart,
        addToFavorite: addToFavorite,
      );
}
