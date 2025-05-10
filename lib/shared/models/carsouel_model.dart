class CarsouelModel {
  
  final String image;
  CarsouelModel({required this.image});

  factory CarsouelModel.fromMap(Map<String, dynamic> data) {
    return CarsouelModel(
      image: data['image'] ?? '',
    );
  }

  
}
