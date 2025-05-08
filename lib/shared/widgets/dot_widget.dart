import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({
    super.key,
    required this.dotHeight,
    required this.dotWidth,
    required this.dotColor,
  });
  final double dotHeight;
  final double dotWidth;
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dotWidth,
      height: dotHeight,
      decoration: BoxDecoration(
        color: dotColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
