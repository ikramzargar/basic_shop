import 'package:flutter/material.dart';
import 'package:shop_app/widget/GridProduct.dart';

import '../models/product.dart';

class Mainshopscreen extends StatelessWidget {
  Mainshopscreen({super.key});
  final List<Product> availProducts = [
    Product(
        id: '1001',
        title: 'Samsung',
        description: "it's a phone",
        image: 'assets/images/samsung.jpeg',
        price: 1000),
    Product(
        id: '1002',
        title: 'iphone',
        description: "it's a phone",
        image: 'assets/images/iphone.jpg',
        price: 1000),
    Product(
        id: '1003',
        title: 'realme',
        description: "it's a phone",
        image: 'assets/images/realme.jpeg',
        price: 1000),
    Product(
        id: '1004',
        title: 'nokia',
        description: "it's a phone",
        image: 'assets/images/nokia.jpg',
        price: 1000),
    Product(
        id: '1005',
        title: 'oneplus',
        description: "it's a phone",
        image: 'assets/images/oneplus.jpeg',
        price: 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: availProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Gridproduct(
              id: availProducts[index].id,
              name: availProducts[index].title,
              image: availProducts[index].image);
        },
      ),
    );
  }
}
