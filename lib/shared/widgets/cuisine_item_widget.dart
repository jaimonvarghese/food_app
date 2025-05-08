import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CuisineItemWidget extends StatelessWidget {
  const CuisineItemWidget({
    super.key,
    required this.cuisine,
    required this.typeTxtsize,
    required this.descTxtsize,
    required this.imageHeight,
    required this.imageWidth,
  });

  final Map<String, String> cuisine;
  final double typeTxtsize;
  final double descTxtsize;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(32),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Align items vertically
        children: [
          MainCardWidget(
            imageHeight: imageHeight,
            imagepath: cuisine["image"]!,
            imageWidth: imageWidth,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center, // Center text vertically
              children: [
                Text(
                  cuisine["type"]!,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: typeTxtsize,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  cuisine["desc"]!,
                  style: GoogleFonts.poppins(
                    fontSize: descTxtsize,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
