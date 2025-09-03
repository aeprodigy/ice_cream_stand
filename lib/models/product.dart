import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final double price;
  final String image;
  final Color productColor;
  final String description;
  final String location;
  final String flavor;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.location,
    required this.productColor,
    required this.flavor,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      productColor: json['color'],
      flavor: json['flavor'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'price': price,
    'image': image,
    'description': description,
    'location': location,
    'flavor': flavor,
  };

  static List<Product> iceCreams = [
    Product(
      id: '1',
      name: 'Avocado Delight',
      price: 2.50,
      description:
          'A smooth and creamy avocado ice cream with a hint of lime, offering a refreshing tropical flavor that is both rich and light at the same time.',
      location: 'Lusaka, Zambia',
      image: 'assets/avocado.png',
      productColor: Colors.green[300]!,
      flavor: 'Avocado Flavor',
    ),
    Product(
      id: '2',
      name: 'Exotic Fruit Mix',
      price: 3.00,
      description:
          'A vibrant blend of tropical fruits including mango, pineapple, and passion fruit, swirled into a creamy frozen treat bursting with natural sweetness.',
      location: 'Ndola, Zambia',
      image: 'assets/exotic.png',
      productColor: Colors.orange[300]!,
      flavor: 'Tropical Fruits Flavor',
    ),
    Product(
      id: '3',
      name: 'Gabana Special',
      price: 2.80,
      description:
          'A signature creation with a fusion of local flavors, combining hints of banana, caramel, and vanilla in one indulgent scoop.',
      location: 'Kitwe, Zambia',
      image: 'assets/gabana.png',
      productColor: Colors.pink[300]!,
      flavor: 'Banana Caramel Flavor',
    ),
    Product(
      id: '4',
      name: 'Cupcake Surprise',
      price: 3.20,
      description:
          'Sweet cupcake-inspired ice cream with layers of vanilla frosting flavor, sprinkles, and a touch of buttery cupcake base for a true dessert experience.',
      location: 'Livingstone, Zambia',
      image: 'assets/cupcake.png',
      productColor: Colors.purple[300]!,
      flavor: 'Cupcake Vanilla Flavor',
    ),
    Product(
      id: '5',
      name: 'Desert Delight',
      price: 3.20,
      description:
          'Inspired by desert flavors, this rich ice cream combines dates, honey, and roasted almonds for a truly unique and satisfying frozen treat.',
      location: 'Livingstone, Zambia',
      image: 'assets/desert.png',
      productColor: Colors.red[300]!,
      flavor: 'Honey Almond Flavor',
    ),
  ];
}
