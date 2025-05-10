import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/shared/models/cuisine_items.dart';
import 'package:food_app/shared/widgets/cuisine_item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CuisineSuggestionsSection extends StatelessWidget {
  Future<List<CuisineItems>> fetchCuisineItems() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('cuisineItems').get();

    return snapshot.docs
        .map((doc) => CuisineItems.fromMap(doc.data()))
        .toList();
  }

  final double ctxtsize;
  final double lineHeight;
  final double lineWidth;
  final double typeTxtsize;
  final double descTxtsize;
  final double imageHeight;
  final double imageWidth;
  CuisineSuggestionsSection({
    super.key,
    required this.ctxtsize,
    required this.lineHeight,
    required this.lineWidth,
    required this.typeTxtsize,
    required this.descTxtsize,
    required this.imageHeight,
    required this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                'assets/svg/Line 1487.svg',
                height: lineHeight,
                width: lineWidth,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(
                'assets/svg/Line 1487.svg',
                height: lineHeight,
                width: lineWidth,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Cuisines you should try',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: ctxtsize,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: FutureBuilder<List<CuisineItems>>(
            future: fetchCuisineItems(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return const Text('Something went wrong');
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Text('No items found');
              }

              final cuisines = snapshot.data!;
              return GridView.builder(
                shrinkWrap: true,
                itemCount: cuisines.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.8,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  final cuisine = cuisines[index];
                  return CuisineItemWidget(
                    cuisine: cuisine,
                    typeTxtsize: typeTxtsize,
                    descTxtsize: descTxtsize,
                    imageHeight: imageHeight,
                    imageWidth: imageWidth,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
