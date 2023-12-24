import 'package:pawcat/view/main/subviews/home/home_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  List<Product> products = [
    Product('Ürün 1', 19.99, 'https://placekitten.com/200/200', 'Elektronik',
        false),
    Product('Ürün 2', 29.99, 'https://placekitten.com/201/201', 'Giyim', false),
    Product(
        'Ürün 3', 39.99, 'https://placekitten.com/202/202', 'Ayakkabı', false),
    // Diğer ürünler...
  ];

  List<Product> displayedProducts = [];

  List<String> categories = ['Tümü', 'Elektronik', 'Giyim', 'Ayakkabı'];

  List<Product> cart = [];

  void filterProductsByCategory(String category) {
    if (category == 'Tümü') {
      displayedProducts = List.from(products);
    } else {
      displayedProducts =
          products.where((product) => product.category == category).toList();
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
