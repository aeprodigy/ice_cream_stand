class NewProduct {
  final String id;
  final String name;
  final String category;
  final String image;
  final double price;
  final String description;
  final bool isFavorite;

  //constructor
  NewProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.category,
    required this.price,
    required this.isFavorite,
  });

  //deserialize
  factory NewProduct.fromJson(Map<String, dynamic> json) {
    return NewProduct(
      id: json['id'],
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      isFavorite: json['isFavorite'],
    );
  }

  //serialize
  Map<String, dynamic> toJson() => {
    'id':id,
    'name':name,
    'image':image,
    'description':description,
    'category':category,
    'price':price,
    'isFavorite':isFavorite
  };

  //mock db
  static List<NewProduct> newProduct = [
    NewProduct(
      id: "n1",
      name: "Choco Late`",
      description: "A delicious new product",
      category: "Ice Cream",
      price: 12.99,
      isFavorite: false,
      image: 'assets/coffee_bean.jpg',
    ),
     NewProduct(
      id: "n2",
      name: "Choco Late`",
      description: "A delicious new product",
      category: "Ice Cream",
      price: 12.99,
      isFavorite: false,
      image: 'assets/cone_slurp.jpg',
    ),
     NewProduct(
      id: "n3",
      name: "Choco Late`",
      description: "A delicious new product",
      category: "Ice Cream",
      price: 12.99,
      isFavorite: false,
      image: 'assets/tea.jpg',
    ),
     NewProduct(
      id: "n4",
      name: "Choco Late`",
      description: "A delicious new product",
      category: "Ice Cream",
      price: 12.99,
      isFavorite: false,
      image: 'assets/cigar_coffee.jpg',
    ),
     NewProduct(
      id: "n4",
      name: "Choco Late`",
      description: "A delicious new product",
      category: "Ice Cream",
      price: 12.99,
      isFavorite: false,
      image: 'assets/jasminecake.jpg',
    ),
  ];
}
