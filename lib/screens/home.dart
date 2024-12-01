import 'package:flutter/material.dart';
import 'package:shirt_shop/widgets/shirt_grid.dart';
import '../model/shop_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Shirts> shirt = [
    Shirts(
      id: 0,
      name: "Adidas jacket",
      description: "A stylish black hoodie by Adidas, perfect for casual wear or light sports activities. Comfortable and durable with a sleek design.",
      price: 100.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FFashion%2Fadidas_duks_za_decake_b_bl_hd_gn4027_crni%2F18781e5eb86baf5b.jpeg&w=388&q=75',
    ),
    Shirts(
      id: 1,
      name: "Adidas Tracksuit Bottoms",
      description: "Comfortable and lightweight Adidas Liteflex tracksuit bottoms in black, ideal for gym sessions or daily wear.",
      price: 200.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FSweatshirtsHoodies%2Fadidas_performance_muski_donji_deo_trenerke_liteflex_pts_gi7310_crne%2F1c28cabba8c6caac.jpeg&w=388&q=75',
    ),
    Shirts(
      id: 2,
      name: "UNDER ARMOUR sweater",
      description: "A cozy and soft fleece hoodie from Under Armour in grey, offering warmth and a relaxed fit for everyday comfort.",
      price: 150.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2Fdefault_upload_bucket%2F196884193270_111_2.jpeg&w=388&q=75',
    ),
    Shirts(
      id: 3,
      name: "Adidas Sweatshirt",
      description: "A classic blue crewneck sweatshirt by Adidas, featuring a minimalist design suitable for all casual occasions.",
      price: 130.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FSpark%2F4066747963554.png&w=388&q=75',
    ),
    Shirts(
      id: 4,
      name: "Adidas Linear Hoodie",
      description: "Adidas Linear hoodie in a contemporary design, great for staying stylish and comfortable during workouts or daily activities.",
      price: 120.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FFashion%2Fadidas_dukser_e_lin_oh_xs_legacy%2F87f2caf8e4d34771.jpeg&w=388&q=75',
    ),
    Shirts(
      id: 5,
      name: "Champion Hoodie",
      description: "A bold red hoodie by Champion, combining sporty aesthetics with casual comfort for an effortlessly stylish look.",
      price: 125.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FFashion%2Fchampion_dukser%2F311a6b34125234d6.jpeg&w=388&q=75',
  ),
    Shirts(
      id: 6,
      name: "Kappa Jacket",
      description: "A sleek black Kappa jacket that combines modern style with functional design. Perfect for chilly days, this jacket offers comfort and durability, making it an ideal choice for both casual outings and light outdoor activities. Its minimalist aesthetic ensures versatility for various wardrobe styles.",
      price: 300.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FD_sport_Mk%2F8058347110625.jpg&w=388&q=75',
    ),
    Shirts(
      id: 7,
      name: "Kappa Tracksuit Bottoms",
      description: "Kappa's signature Banda tracksuit bottoms in black, featuring the iconic logo stripe for a trendy and sporty vibe.",
      price: 100.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FTrousers%2Fkappa_muski_donji_deo_trenerke_222_banda_rastoria_slim_crni%2Ffe480e6abd98dd9a.jpeg&w=388&q=75',
    ),
    Shirts(
      id: 8,
      name: "Kappa Slim Hoodie",
      description: "A navy slim-fit hoodie by Kappa, featuring a sleek design and soft material for a fashionable yet cozy look.",
      price: 90.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FFashion%2Fkappa_muski_duks_logo_jackus_slim_teget%2Ff6045be7b4a39343.webp&w=388&q=75',
    ),
    Shirts(
      id: 9,
      name: "Hummel Sweatshirt",
      description: "Hummel's classic grey cotton sweatshirt offers timeless comfort and style, perfect for casual outings or light exercise.",
      price: 80.00,
      img: 'https://ananas.mk/_next/image?url=https%3A%2F%2Fstatic.ananas.rs%2Fassets%2FProduct_Images%2FSweatshirtsHoodies%2Fhummel_muski_duks_hmlgo_cotton_sweatshirt%2F3316ee544af055db.jpeg&w=388&q=75',
    )];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green[400],
        leading: IconButton(onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
        title: const Text("213276", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ShirtGrid(shirt: shirt),
      backgroundColor: Colors.black26,
    );
  }
}