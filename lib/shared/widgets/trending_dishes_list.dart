import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/shared/models/trending_dishes.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';

class TrendingDishesList extends StatelessWidget {

  Future<List<TrendingDishes>> fetchTrendingDishes() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('trendingDishes').get();

    return snapshot.docs
        .map((doc) => TrendingDishes.fromMap(doc.data()))
        .toList();
  }

  final double tcontainerHeight;
  final double timageHeight;
  final double timageWidth;
  final double ttxtsize;
  final double containerHpadding;
  final double containerVpadding;
  final double tagtxtsize;
  final double eyeIconSize;
  final double viewsize;

  TrendingDishesList({
    super.key,
    required this.tcontainerHeight,
    required this.timageHeight,
    required this.timageWidth,
    required this.ttxtsize,
    required this.containerHpadding,
    required this.containerVpadding,
    required this.tagtxtsize,
    required this.eyeIconSize,
    required this.viewsize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: FutureBuilder<List<TrendingDishes>>(
        future: fetchTrendingDishes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Text('Something went wrong');
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Text('No dishes found');
          }
          final dishes = snapshot.data!;
          return Container(
            height: tcontainerHeight,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dishes.length,
              itemBuilder: (context, index) {
                final dish = dishes[index];
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Stack(
                        children: [
                          MainCardWidget(
                            imageHeight: timageHeight,
                            imagepath: dish.imageUrl,
                            imageWidth: timageWidth,
                          ),
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: containerHpadding,
                                vertical: containerVpadding,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                dish.tag,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: tagtxtsize,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  size: eyeIconSize,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  dish.views,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: viewsize,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Text(
                            dish.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: ttxtsize,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
