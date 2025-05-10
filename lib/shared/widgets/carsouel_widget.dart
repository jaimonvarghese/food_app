import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/shared/models/carsouel_model.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';

class CarsouelWidget extends StatelessWidget {
  Future<List<CarsouelModel>> fetchCarsouelList() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('carsouelList').orderBy('image',descending: false).get();

    return snapshot.docs
        .map((doc) => CarsouelModel.fromMap(doc.data()))
        .toList();
  }

  const CarsouelWidget({
    super.key,
    required this.containerHeight,
    required this.imageHeight,
    required this.imageWidth,
  });
  final double containerHeight;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 30, bottom: 30),
      child: FutureBuilder<List<CarsouelModel>>(
        future: fetchCarsouelList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Text('Something went wrong');
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Text('No items found');
          }

          final carsouelList = snapshot.data!;
          return Container(
            height: containerHeight,
            width: double.infinity,
            color: Colors.white,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (ctx, index) => SizedBox(width: 10),
              itemBuilder: (ctx, index) {
                final carsouel = carsouelList[index];
                return MainCardWidget(
                  imageHeight: imageHeight,
                  imageWidth: imageWidth,
                  imagepath:carsouel.image ,
                );
              },
              itemCount: carsouelList.length,
            ),
          );
        },
      ),
    );
  }
}
