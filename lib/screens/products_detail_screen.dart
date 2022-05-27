import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

import '../mocks/products.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static String routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final String title =
        Products.firstWhere((element) => element.id == id).title as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
