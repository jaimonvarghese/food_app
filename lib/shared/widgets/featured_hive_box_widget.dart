import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/featured_hive_box_item_widget.dart';

class FeatueredHiveBoxWidget extends StatelessWidget {
  const FeatueredHiveBoxWidget({
    super.key,
    required this.containerHeight,
    required this.fcontainerHeight,
    required this.fsizedboxHeight,
    required this.imageHeight,
    required this.imageWidth,
    required this.pricesize,
    required this.bigImageHeight,
    required this.bigImageWidth,
    required this.dotHeight,
    required this.dotWidth,
    required this.dotColor1,
    required this.dotColor2,
    required this.loctionTxtSize,
    required this.restaurantTxtSize,
    required this.drictionContainerWidth,
    required this.drictionContainerHeight,
    required this.drictionImageWidth,
    required this.drictionImageHeight,
    required this.viewAllWidth,
    required this.viewAllHeight,
    required this.viewAllTxtSize,
  });
  final double containerHeight;
  final double fcontainerHeight;
  final double fsizedboxHeight;
  final double imageHeight;
  final double imageWidth;
  final double pricesize;
  final double bigImageHeight;
  final double bigImageWidth;
  final double dotHeight;
  final double dotWidth;
  final double loctionTxtSize;
  final double restaurantTxtSize;
  final double drictionContainerWidth;
  final double drictionContainerHeight;
  final double drictionImageWidth;
  final double drictionImageHeight;
  final double viewAllWidth;
  final double viewAllHeight;
  final double viewAllTxtSize;
  final Color dotColor1;
  final Color dotColor2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),

      child: Column(
        children: [
          Container(
            height: containerHeight,
            color: Colors.white,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (ctx, index) => SizedBox(height: 25),
              itemBuilder: (ctx, index) {
                return FeatueredHiveBoxItemWidget(
                  fcontainerHeight: fcontainerHeight,
                  fsizedboxHeight: fsizedboxHeight,
                  imageHeight: imageHeight,
                  imageWidth: imageWidth,
                  pricesize: pricesize,
                  bigImageHeight: bigImageHeight,
                  bigImageWidth: bigImageWidth,
                  dotHeight: dotHeight,
                  dotWidth: dotWidth,
                  dotColor1: dotColor1,
                  dotColor2: dotColor2,
                  loctionTxtSize: loctionTxtSize,
                  restaurantTxtSize: restaurantTxtSize,
                  drictionContainerWidth: drictionContainerWidth,
                  drictionContainerHeight: drictionContainerHeight,
                  drictionImageWidth: drictionImageWidth,
                  drictionImageHeight: drictionImageHeight,
                );
              },
              itemCount: 2,
            ),
          ),
          Container(
            width: viewAllWidth,
            height: viewAllHeight,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white10, width: 2),
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
            ),
            child: Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'view all hives',
                  style: TextStyle(
                    fontSize: viewAllTxtSize,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
