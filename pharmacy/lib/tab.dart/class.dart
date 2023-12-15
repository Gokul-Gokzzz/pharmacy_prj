class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class Cartpd {
  final Product product;
  int quantity;

  Cartpd({required this.product, required this.quantity});
}