import 'product.dart';

class Items {
  final Product product;
  final int quantity;

  Items({
    required this.product,
    this.quantity = 1,
  });

  int get price => quantity * product.price;
}
