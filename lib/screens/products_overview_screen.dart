import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Icons,
        Key,
        PopupMenuButton,
        PopupMenuItem,
        Scaffold,
        StatelessWidget,
        Text,
        Widget;
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/filter_options.dart';
import 'package:shop_app/providers/products_provider.dart';
import '../widgets/products_grid.dart' show ProductsGrid;

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shop"),
        actions: const [PopupMenuButtonWidget()],
      ),
      body: const ProductsGrid(),
    );
  }
}

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context);

    return PopupMenuButton(
        onSelected: (filterOptions value) => {products.toggleFavoritesOnly()},
        icon: const Icon(Icons.more_vert),
        itemBuilder: (context) => [
              const PopupMenuItem(
                  child: Text("Only favorites"),
                  value: filterOptions.favorites),
              const PopupMenuItem(
                  child: Text("All articles"), value: filterOptions.all),
            ]);
  }
}
