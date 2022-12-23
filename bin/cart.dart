// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'item.dart';

class Cart {
  final List<Items> cart;
  final int total;

  Cart({
    required this.cart,
    required this.total,
  });
}
