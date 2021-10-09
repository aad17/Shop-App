import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;

  // ProductDetailScreen(this.title);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen:
          false, //Here the listen is set to false as in product detail screen we do not want to update this screen whenever new data is added.
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
    );
  }
}
