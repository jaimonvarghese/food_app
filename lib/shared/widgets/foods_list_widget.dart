import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/shared/models/food_list_model.dart';
import 'package:food_app/shared/widgets/fillterand_toggle_button_widget.dart';
import 'package:food_app/shared/widgets/food_item_card.dart';

class FoodsListWidget extends StatelessWidget {
  Future<List<FoodListModel>> fetchFoodLists() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('foodLists').get();

    return snapshot.docs
        .map((doc) => FoodListModel.fromMap(doc.data()))
        .toList();
  }

  const FoodsListWidget({
    super.key,
    required this.txtsize,
    required this.flContainerHeight,
    required this.flContainerWidth,
    required this.folConitainerHeight,
    required this.folcContainerHeight,
    required this.imageHeight,
    required this.imageWidth,
    required this.titleSize,
    required this.iconSize,
    required this.categorySize,
    required this.oldPriceSize,
    required this.newPriceSize,
    required this.eatTxtSize,
    required this.eatIconSize,
  });
  final double txtsize;
  final double flContainerHeight;
  final double flContainerWidth;
  final double folConitainerHeight;
  final double folcContainerHeight;
  final double imageHeight;
  final double imageWidth;
  final double titleSize;
  final double iconSize;
  final double categorySize;
  final double oldPriceSize;
  final double newPriceSize;
  final double eatTxtSize;
  final double eatIconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          FilterandToggleButtonsWidget(
            txtsize: txtsize,
            flContainerHeight: flContainerHeight,
            flContainerWidth: flContainerWidth,
          ),
          SizedBox(height: 20),
          FutureBuilder<List<FoodListModel>>(
            future: fetchFoodLists(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return const Text('Something went wrong');
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Text('No items found');
              }

              final foods = snapshot.data!;
              return Container(
                height: folConitainerHeight,
                width: double.infinity,
                color: Colors.white,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (ctx, index) => SizedBox(height: 10),
                  itemBuilder: (ctx, index) {
                    final food = foods[index];
                    return FoodItemCard(
                      folcContainerHeight: folcContainerHeight,
                      imageHeight: imageHeight,
                      imageWidth: imageWidth,
                      titleSize: titleSize,
                      iconSize: iconSize,
                      categorySize: categorySize,
                      oldPriceSize: oldPriceSize,
                      newPriceSize: newPriceSize,
                      eatTxtSize: eatTxtSize,
                      eatIconSize: eatIconSize,
                      imagepath: food.image,
                      name: food.name,
                      newPrice: food.newPrice,
                      category: food.category,
                    );
                  },
                  itemCount: foods.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
