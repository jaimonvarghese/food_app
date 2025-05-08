import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/main_card_widget.dart';

class CarsouelWidget extends StatelessWidget {
  const CarsouelWidget({
    super.key,
    required this.containerHeight,
    required this.imageHeight,
    required this.imageWidth,
  });
  final double containerHeight;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 30, bottom: 30),
      child: Container(
        height: containerHeight,
        width: double.infinity,
        color: Colors.white,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (ctx, index) => SizedBox(width: 10),
          itemBuilder: (ctx, index) {
            return MainCardWidget(
              imageHeight: imageHeight,
              imageWidth: imageWidth,
              imagepath: 'assets/images/biryani.png',
            );
          },
          itemCount: 2,
        ),
      ),
    );
  }
}
