import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';

class TrendingDishesList extends StatelessWidget {
  final List<Map<String, String>> dishes = [
    {
      'tag': '#clocktower',
      'name': 'Chicken Biryani',
      'image': 'assets/images/biryani.png',
    },
    {
      'tag': '#fusionfrenzy',
      'name': 'Chicken Maggie',
      'image': 'assets/images/maggie.png',
    },
    {
      'tag': '#lockupcafe',
      'name': 'Veg Cheese Burger',
      'image': 'assets/images/burger.png',
    },
  ];
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
      child: Container(
        height: tcontainerHeight,
        color: Colors.white,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dishes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Stack(
                    children: [
                      MainCardWidget(
                        
                        imageHeight: timageHeight,
                        imagepath: dishes[index]['image']!,
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
                            dishes[index]['tag']!,
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
                              '1.7k',
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
                        dishes[index]['name']!,
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
      ),
    );
  }
}
