import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HiveverseWidget extends StatelessWidget {
  const HiveverseWidget({
    super.key,
    required this.titleTxtSize,
    required this.sizedboxHeight,
    required this.imageHeight,
    required this.imageWidth,
    required this.txtSize,
  });
  final double titleTxtSize;
  final double sizedboxHeight;
  final double imageHeight;
  final double imageWidth;
  final double txtSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hiveverse',
            style: GoogleFonts.poppins(
              fontSize: titleTxtSize,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: sizedboxHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (ctx, index) => SizedBox(width: 10),
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    MainCardWidget(
                      imageHeight: imageHeight,
                      imageWidth: imageWidth,
                      imagepath: 'assets/images/biryani.png',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Parcel Delivery',
                      style: TextStyle(
                        fontSize: txtSize,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
