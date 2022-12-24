// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'item.dart';

class Cart {
  final List<Items> cart;

  Cart({
    required this.cart,
  });

  // int get total => cart.reduce((value, element) => value + element.price);
}
