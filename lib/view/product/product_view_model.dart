// import 'package:stacked/stacked.dart';

// class ProductViewModel extends BaseViewModel{

// }

import 'package:stacked/stacked.dart';

class ProductViewModel extends BaseViewModel {
 final String imageUrl = 'https://via.placeholder.com/150';
 final Product product = Product(
    id: 1,
    name: 'Dummy Product Name',
    description: 'This is a dummy product description.',
    price: 19.99,
 );
}

class Product {
 final int id;
 final String name;
 final String description;
 final double price;

 Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
 });
}