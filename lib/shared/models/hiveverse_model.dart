class HiveverseModel {
  final String title;
  final String image;

  HiveverseModel({required this.title, required this.image});
  factory HiveverseModel.fromMap(Map<String, dynamic> data) {
    return HiveverseModel(
      title: data['title'] ?? '',
      image: data['image'] ?? '',
    );
  }
}
