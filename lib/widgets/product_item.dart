import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(product.imageUrl, fit: BoxFit.cover),
        footer: ClipRRect(
          child: GridTileBar(
              leading: IconButton(
                icon: Icon(Icons.favorite_sharp),
                onPressed: () => null,
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
