class TrendingDishes {
  final String name;
  final String imageUrl;
  final String tag;
  final String views;

  TrendingDishes({
    required this.name,
    required this.imageUrl,
    required this.tag,
    required this.views,
  });

  factory TrendingDishes.fromMap(Map<String, dynamic> data) {
    return TrendingDishes(
      name: data['name'] ?? '',
      imageUrl: data['image'] ?? '',
      tag: data['tag'] ?? '',
      views: data['views'] ?? '',
    );
  }
}
