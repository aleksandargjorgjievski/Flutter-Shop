import 'dart:ffi';

class Shirts {
  int id;
  String name;
  String description;
  double price;
  String img;

  Shirts({required this.id, required this.name, required this.description,  required this.price,  required this.img});

  Shirts.fromJson(Map<String, dynamic> data)
        : id = data['id'],
          name = data['name'],
          description = data['description'],
          price = data['price'],
          img = data['img'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'description': description, 'price': price, 'img': img};
}