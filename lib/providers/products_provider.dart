import 'package:flutter/material.dart';
import 'package:shop_app/mocks/products.dart';
import 'package:shop_app/providers/product_provider.dart';

class ProductsProvider with ChangeNotifier {
  final List<ProductProvider> _items = products;
  bool _showFavoritesOnly = false;

  List<ProductProvider> get items {
    return _showFavoritesOnly
        ? _items.where((element) => element.isFavorite).toList()
        : [..._items];
  }

  ProductProvider findById(String id) {
    return [..._items].firstWhere((element) => element.id == id);
  }

  void toggleFavoritesOnly() {
    _showFavoritesOnly = !_showFavoritesOnly;
  }
}
