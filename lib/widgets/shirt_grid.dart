import 'package:flutter/material.dart';
import 'package:shirt_shop/model/shop_model.dart';
import 'package:shirt_shop/widgets/shirt_card.dart';

class ShirtGrid extends StatefulWidget {
  final List<Shirts> shirt;
  const ShirtGrid({super.key, required this.shirt});

  @override
  _ShirtGridState createState() => _ShirtGridState();
}
class _ShirtGridState extends State<ShirtGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.shirt.map((shirt) =>
          ShirtCard(id: shirt.id, name: shirt.name, description: shirt.description, price: shirt.price, image: shirt.img),
      ).toList(),
    );
  }
}
