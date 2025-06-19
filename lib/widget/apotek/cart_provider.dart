import 'package:flutter/material.dart';
import 'package:mediquick/widget/apotek/cart_item.dart';

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(CartItem item) {
    _items.remove(item);
    notifyListeners();
  }

  void updateQuantity(CartItem item, int newQuantity) {
    final index = _items.indexOf(item);
    if (index != -1) {
      _items[index] = CartItem(
        name: item.name,
        image: item.image,
        variant: item.variant,
        size: item.size,
        price: item.price,
        quantity: newQuantity,
      );
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  int get totalPrice {
    return _items.fold(0, (sum, item) => sum + item.price * item.quantity);
  }
}
