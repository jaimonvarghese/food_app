import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/shared/models/hiveverse_model.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HiveverseWidget extends StatelessWidget {
  Future<List<HiveverseModel>> fetchHiveverseItems() async {
    final snapshot =
        await FirebaseFirestore.instance
            .collection('hiveverseItems')
            .orderBy('title', descending: true)
            .get();

    return snapshot.docs
        .map((doc) => HiveverseModel.fromMap(doc.data()))
        .toList();
  }

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
          FutureBuilder<List<HiveverseModel>>(
            future: fetchHiveverseItems(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return const Text('Something went wrong');
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Text('No items found');
              }

              final hivevers = snapshot.data!;
              return SizedBox(
                height: sizedboxHeight,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (ctx, index) => SizedBox(width: 10),
                  itemBuilder: (ctx, index) {
                    final hivever = hivevers[index];
                    return Column(
                      children: [
                        MainCardWidget(
                          imageHeight: imageHeight,
                          imageWidth: imageWidth,
                          imagepath: hivever.image,
                        ),
                        SizedBox(height: 10),
                        Text(
                          hivever.title,
                          style: TextStyle(
                            fontSize: txtSize,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: hivevers.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
