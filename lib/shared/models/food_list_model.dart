class FoodListModel {
  final String name;
  final String image;
  final String newPrice;
  final String category;

  FoodListModel({
    required this.category,
    required this.name,
    required this.image,
    required this.newPrice,
  });

  factory FoodListModel.fromMap(Map<String, dynamic> data) {
    return FoodListModel(
      name: data['name'] ?? '',
      image: data['image'] ?? '',
      newPrice: data['newPrice'] ?? '',
      category: data['category'] ?? '',
    );
  }
}
