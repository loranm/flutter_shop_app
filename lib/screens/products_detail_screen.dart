import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Key,
        ModalRoute,
        Scaffold,
        StatelessWidget,
        Text,
        Widget;
import 'package:provider/provider.dart' show Provider;

import '../providers/products_provider.dart' show ProductsProvider;

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static String routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<ProductsProvider>(context, listen: false).findById(id);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
