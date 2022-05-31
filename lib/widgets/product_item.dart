import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product_provider.dart';
import 'package:shop_app/screens/products_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductProvider>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                  arguments: product.id);
            },
            child: Image.network(product.imageUrl, fit: BoxFit.cover)),
        footer: ClipRRect(
          child: GridTileBar(
              leading: IconButton(
                icon: Consumer(
                    builder: (BuildContext context, value, Widget? child) {
                  return Icon(product.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border);
                }),
                onPressed: () => product.toggleFavorite(),
                color: Theme.of(context).colorScheme.secondary,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => null,
                color: Theme.of(context).colorScheme.secondary,
              ),
              backgroundColor: Colors.black87,
              title: Text(
                product.title,
                textAlign: TextAlign.center,
              )),
        ),
      ),
    );
  }
}
