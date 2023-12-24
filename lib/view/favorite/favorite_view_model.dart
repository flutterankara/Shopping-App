import 'package:stacked/stacked.dart';
import 'package:pawcat/view/main/subviews/home/home_view.dart';

class FavoriteViewModel extends BaseViewModel {
  List<Product> products = [
    Product(
        'Ürün 1', 19.99, 'https://placekitten.com/200/200', 'Elektronik', true),
    Product('Ürün 2', 29.99, 'https://placekitten.com/201/201', 'Giyim', false),
    Product(
        'Ürün 3', 39.99, 'https://placekitten.com/202/202', 'Ayakkabı', true),
    // Diğer ürünler...
  ];

  List<Product> get favoriteProducts =>
      products.where((product) => product.isFavorite).toList();
}
