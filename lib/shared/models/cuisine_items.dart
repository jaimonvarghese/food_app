class CuisineItems {
  final String type;
  final String desc;
  final String image;
  CuisineItems({required this.type, required this.desc, required this.image});

  factory CuisineItems.fromMap(Map<String, dynamic> data) {
    return CuisineItems(
      type: data['type'] ?? '',
      desc: data['desc'] ?? '',
      image: data['image'] ?? '',
    );
  }
}
