import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/shared/models/food_playlist.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPlaylistWidget extends StatelessWidget {
  Future<List<FoodPlaylist>> fetchFoodPlayLists() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('foodPlaylists').get();

    return snapshot.docs
        .map((doc) => FoodPlaylist.fromMap(doc.data()))
        .toList();
  }

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

            FutureBuilder<List<FoodPlaylist>>(
              future: fetchFoodPlayLists(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text('Something went wrong');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('No items found');
                }

                final foods = snapshot.data!;
                return SizedBox(
                  height: sizedboxHeight,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (ctx, index) => SizedBox(width: 20),
                    itemBuilder: (ctx, index) {
                      final food = foods[index];
                      return MainCardWidget(
                        imageHeight: imageHeight,
                        imageWidth: imageWidth,
                        imagepath: food.image,
                      );
                    },
                    itemCount: foods.length,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
