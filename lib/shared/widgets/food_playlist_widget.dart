import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPlaylistWidget extends StatelessWidget {
  const FoodPlaylistWidget({
    super.key,
    required this.containerHeight,
    required this.txtSize,
    required this.sizedboxHeight,
    required this.imageHeight,
    required this.imageWidth,
  });
  final double containerHeight;
  final double txtSize;
  final double sizedboxHeight;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: containerHeight,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Food playlist',
              style: GoogleFonts.poppins(
                fontSize: txtSize,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              height: sizedboxHeight,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (ctx, index) => SizedBox(width: 20),
                itemBuilder: (ctx, index) {
                  return MainCardWidget(
                    imageHeight: imageHeight,
                    imageWidth: imageWidth,
                    imagepath: 'assets/images/biryani.png',
                  );
                },
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
