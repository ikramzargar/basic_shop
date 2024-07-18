import 'package:flutter/material.dart';

class Gridproduct extends StatelessWidget {
  const Gridproduct(
      {super.key, required this.id, required this.name, required this.image});

  final String id, name, image;

  @override
  Widget build(BuildContext context) {
    return  GridTile(child: Image.asset(image));
  }
}
