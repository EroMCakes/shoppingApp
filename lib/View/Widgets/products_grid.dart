import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './product_item.dart';
import '../../Providers/products_provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: ((context, index) => ProductItem(
            id: products[index].id,
            title: products[index].title,
            imageUrl: products[index].imageUrl,
          )),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
      ),
    );
  }
}
