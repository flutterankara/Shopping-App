import 'package:pawcat/view/main/subviews/home/home_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  List<Product> products = [
    Product(
        'Ürün 1',
        19.99,
        'https://bayi.pelagos.com.tr/snacky-small-biftekli-kopek-odulu-46gr-x-24lu-odul-ve-kemikler-snacky-28949-26-K.jpg',
        'Mama',
        false),
    Product(
        'Ürün 2',
        29.99,
        'https://bayi.pelagos.com.tr/wanpy-taze-tavukluhavuclu-kedi-et-ezmesi-90-gr-oduller-wanpy-28672-26-K.jpg',
        'Mama',
        false),

    Product(
        'Ürün 3',
        39.99,
        'https://bayi.pelagos.com.tr/wanpy-tondeniz-tarakli-2514-gr-krema-kedi-odulu-rac-051-oduller-wanpy-28752-26-K.jpg',
        'Kedi',
        false),
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
        false),
    Product(
        'Ürün 9',
        39.99,
        'https://bayi.pelagos.com.tr/wanpy-tonsomon-2514-gr-krema-kedi-odulu-rac-052-oduller-wanpy-28751-26-K.jpg',
        'Köpek',
        false),
    // Diğer ürünler...
  ];

  List<Product> displayedProducts = [];

  List<String> categories = ['Tümü', 'Mama', 'Kedi', 'Köpek'];

  List<Product> cart = [];

  init() {
    displayedProducts = List.from(products);
    notifyListeners();
  }

  void filterProductsByCategory(String category) {
    if (category == 'Tümü') {
      displayedProducts = List.from(products);
    } else {
      displayedProducts = products.where((product) => product.category == category).toList();
    }
    notifyListeners();
  }

  void addToCart(Product product) {
    // final existingCartItem = cart.firstWhere(
    //   (item) => item.name == product.name,
    // );

    // if (existingCartItem != null) {
    //   // existingCartItem.quantity++;
    // } else {
    //   cart.add(Product(product.name, product.price, product.imageUrl, product.category));
    // }

    notifyListeners();
  }

  // void showCart() {
  //   showModalBottomSheet(
  //     context: navigator.context,
  //     builder: (context) => Column(
  //       children: [Text('Sepet', style: Theme.of(context).textTheme.headline6), ],
  //     ),
  //   );
  // }

  void removeFromCart(Product cartItem) {
    // if (cartItem.quantity > 1) {
    //   cartItem.quantity--;
    // } else {
    //   cart.remove(cartItem);
    // }

    notifyListeners();
  }
}
