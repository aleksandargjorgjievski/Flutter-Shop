import 'package:flutter/material.dart';
import 'package:shirt_shop/model/shop_model.dart';
import 'package:shirt_shop/widgets/shirt_card_data.dart';

class ShirtCard extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;

  const ShirtCard({super.key, required this.id, required this.name, required this.description, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black26,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.lightGreen[200],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Shirts(id: id, name: name, description: description, price: price, img: image))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(5)
          ),
          child: ShirtCardData(image: image, name: name),
        ),
      ),
    );
  }
}
