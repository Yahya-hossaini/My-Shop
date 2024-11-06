import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  //
  // const ProductDetailScreen({super.key, required this.title, required this.price});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productID =  ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
