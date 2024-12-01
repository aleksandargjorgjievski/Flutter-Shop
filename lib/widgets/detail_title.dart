import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final int id;
  final String name;
  final double price;

  const DetailTitle({
    super.key,
    required this.id,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.black,
      label: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          Text(
            "\$${price.toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
