import 'package:stacked/stacked.dart';
import 'package:pawcat/view/main/subviews/home/home_view.dart';

class FavoriteViewModel extends BaseViewModel {
  List<Product> products = [
  Product(
        'Ürün 3',
        39.99,
        'https://bayi.pelagos.com.tr/wanpy-tonsomon-2514-gr-krema-kedi-odulu-rac-052-oduller-wanpy-28751-26-K.jpg',
        'Köpek',
        false),
    Product(
        'Ürün 5',
        39.99,
        'https://bayi.pelagos.com.tr/wanpy-tonsomon-2514-gr-krema-kedi-odulu-rac-052-oduller-wanpy-28751-26-K.jpg',
        'Köpek',
        false),
    Product(
        'Ürün 7',
        39.99,
        'https://bayi.pelagos.com.tr/wanpy-tonsomon-2514-gr-krema-kedi-odulu-rac-052-oduller-wanpy-28751-26-K.jpg',
        'Köpek',
        true),
    Product(
        'Ürün 9',
        39.99,
        'https://bayi.pelagos.com.tr/wanpy-tonsomon-2514-gr-krema-kedi-odulu-rac-052-oduller-wanpy-28751-26-K.jpg',
        'Köpek',
        true),
    // Diğer ürünler...
  ];

  List<Product> get favoriteProducts =>
      products.where((product) => product.isFavorite).toList();
}
