import 'package:flutter/material.dart'
    show AppBar, BuildContext, Key, Scaffold, StatelessWidget, Text, Widget;
import '../widgets/products_grid.dart' show ProductsGrid;

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
      ),
      body: ProductsGrid(),
    );
  }
}
