class Product {
  final int id;
  final String image;
  final String title;
  final int price;
  final String description;
  final int rating;
  final int slashPrice;
  List<Map<String, dynamic>>? reviews = [];
  Product({
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.description,
    required this.rating,
    required this.slashPrice,
    this.reviews,
  });
}
