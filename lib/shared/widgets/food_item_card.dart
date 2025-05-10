import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';
import 'package:food_app/shared/widgets/food_option_sheet.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({
    super.key,
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
    required this.imagepath,
    required this.name,
    required this.newPrice,
    required this.category,
  });
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
  final String imagepath;
  final String name;
  final String newPrice;
  final String category;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,

      builder: (context) {
        return const FoodOptionSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: folcContainerHeight,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainCardWidget(
            imageHeight: imageHeight,
            imagepath: imagepath,
            imageWidth: imageWidth,
          ),
          const SizedBox(width: 12),
          // Text section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: category == 'non veg' ? Colors.red : Colors.green,
                      size: iconSize,
                    ),
                    SizedBox(width: 4),
                    Text(
                      category,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: categorySize,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '₹450',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: oldPriceSize,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      newPrice,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: newPriceSize,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => _showBottomSheet(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC107),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                label: Text("Eat", style: TextStyle(fontSize: eatTxtSize)),
                icon: Icon(Icons.restaurant_menu, size: eatIconSize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
