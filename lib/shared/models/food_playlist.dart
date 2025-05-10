class FoodPlaylist {
  
  final String image;
  FoodPlaylist({required this.image});

  factory FoodPlaylist.fromMap(Map<String, dynamic> data) {
    return FoodPlaylist(
      image: data['image'] ?? '',
    );
  }

  
}
