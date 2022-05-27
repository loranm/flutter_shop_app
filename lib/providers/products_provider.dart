import 'package:flutter/material.dart';
import 'package:shop_app/mocks/products.dart';
import 'package:shop_app/providers/product_provider.dart';

class ProductsProvider with ChangeNotifier {
  final List<ProductProvider> _items = Products;

  List<ProductProvider> get items {
    return [..._items];
  }

  ProductProvider findById(String id) {
    return [..._items].firstWhere((element) => element.id == id);
  }
}
