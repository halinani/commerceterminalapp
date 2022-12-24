import 'dart:ffi';
import 'dart:io';
import 'cart.dart';
import 'item.dart';
import 'product.dart';

// vreation of products

Product apple = Product(id: 1, name: 'apple', price: 10);
Product orange = Product(id: 2, name: 'orage', price: 5);
Product cake = Product(id: 3, name: 'cake', price: 50);

// list of products the user can pick from..(the sites inventory)

List<Product> listp = [
  apple,
  orange,
  cake,
];

// this is a cart LIst..
List<Items> listi = <Items>[];
final cart = Cart(cart: listi);

void main(List<String> arguments) {
// the while loop..(The commerce app funtion)

  while (true) {
    print('V to View cart\n A to add item\n C to checkout\n Q to quit\n\n\n\n');
    final String line = stdin.readLineSync().toString().toLowerCase();

// v is for viewing the cart
    if (line == 'v') {
      viewCart();
      continue;
    } else if (line == 'a') {
//  a is for adding an item to the cart..
      addingItemtoCart();
      continue;
    } else if (line == 'c') {
// c is for checking out the items in the cart
    } else if (line == 'q') {
// q is for quitung
      print('Goodbye!');
      break;
    } else {
// anything else we say invalid
      print("Invalid input");
      continue;
    }
  }
}

void viewCart() {
  for (var element in listp) {
    print('${element.name} \$${element.price}');
  }
}

void addingItemtoCart() {
  print(
      'Select the item you want to add to the cart \n 1 for Apple \$${listp[0].price}, 2 for Orange \$${listp[1].price}, 3 For Cake\$${listp[2].price}');
  final idPicked = stdin.readLineSync();
  print('Enter number of quantity');
  final int quantity = int.parse(stdin.readLineSync().toString());

  switch (idPicked) {
    case '1':
      cart.cart.add(Items(product: apple, quantity: quantity));
      break;
    case '2':
      cart.cart.add(Items(product: orange, quantity: quantity));
      break;
    case '3':
      cart.cart.add(Items(product: cake, quantity: quantity));
  }
}
