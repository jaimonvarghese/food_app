import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/dot_widget.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatueredHiveBoxItemWidget extends StatelessWidget {
  const FeatueredHiveBoxItemWidget({
    super.key,
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
  });
  final double fcontainerHeight;
  final double fsizedboxHeight;
  final double imageHeight;
  final double imageWidth;
  final double bigImageHeight;
  final double bigImageWidth;
  final double pricesize;
  final double dotHeight;
  final double loctionTxtSize;
  final double restaurantTxtSize;
  final double drictionContainerWidth;
  final double drictionContainerHeight;
  final double drictionImageWidth;
  final double drictionImageHeight;
  final double dotWidth;
  final Color dotColor1;
  final Color dotColor2;

  @override
  Widget build(BuildContext context) {

    return FeaturedHiveContainerWidget(
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
  }
}

class FeaturedHiveContainerWidget extends StatelessWidget {
  const FeaturedHiveContainerWidget({
    super.key,
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
  });

  final double fcontainerHeight;
  final double fsizedboxHeight;
  final double imageHeight;
  final double imageWidth;
  final double pricesize;
  final double bigImageHeight;
  final double bigImageWidth;
  final double dotHeight;
  final double dotWidth;
  final Color dotColor1;
  final Color dotColor2;
  final double loctionTxtSize;
  final double restaurantTxtSize;
  final double drictionContainerWidth;
  final double drictionContainerHeight;
  final double drictionImageWidth;
  final double drictionImageHeight;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: fcontainerHeight,

      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: fsizedboxHeight,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 15),
                          MainCardWidget(
                            imageHeight: imageHeight,
                            imageWidth: imageWidth,
                            imagepath: 'assets/images/c1.png',
                          ),
                          SizedBox(height: 10),
                          Text(
                            '₹ 450.00',
                            style: TextStyle(fontSize: pricesize),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          SizedBox(height: 15),
                          MainCardWidget(
                            imageHeight: imageHeight,
                            imageWidth: imageWidth,
                            imagepath: 'assets/images/c2.png',
                          ),
                          SizedBox(height: 10),
                          Text(
                            '₹ 450.00',
                            style: TextStyle(fontSize: pricesize),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          SizedBox(height: 15),
                          MainCardWidget(
                            imageHeight: imageHeight,
                            imageWidth: imageWidth,
                            imagepath: 'assets/images/c3.png',
                          ),
                          SizedBox(height: 10),
                          Text(
                            '₹ 450.00',
                            style: TextStyle(fontSize: pricesize),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MainCardWidget(
                    imageHeight: bigImageHeight,
                    imagepath: 'assets/images/bcimage.png',
                    imageWidth: bigImageWidth,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DotWidget(
                        dotHeight: dotHeight,
                        dotWidth: dotWidth,
                        dotColor: dotColor1,
                      ),
                      SizedBox(width: 2),
                      DotWidget(
                        dotHeight: dotHeight,
                        dotWidth: dotWidth,
                        dotColor: dotColor2,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Indian/ chinese/ thai/ japanese',
                        style: GoogleFonts.poppins(fontSize: loctionTxtSize),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Clock Tower: Restaurant cum Cafe',
                    style: TextStyle(
                      fontSize: restaurantTxtSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Container(
                width: drictionContainerWidth,
                height: drictionContainerHeight,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10, width: 2),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/arrow.png',
                    width: drictionImageWidth,
                    height: drictionImageHeight,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
